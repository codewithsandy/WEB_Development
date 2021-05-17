# save this as app.py
import json
import os
import math
from werkzeug.utils import secure_filename
from flask import Flask, render_template, request, session, redirect, flash
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail


with open('config.json', 'r') as c:
    params = json.load(c)["params"]
local_server = True
app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config['UPLOAD_FOLDER'] = params['upload_location']
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['gmail_uid'],
    MAIL_PASSWORD=params['gmail_pass']
)
mail = Mail(app)

if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']
db = SQLAlchemy(app)


class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(50), nullable=True)
    email = db.Column(db.String(30), nullable=False)


class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    tagline = db.Column(db.String(50), nullable=False)
    slug = db.Column(db.String(25), nullable=False)
    content = db.Column(db.String(50000), nullable=False)
    date = db.Column(db.String, nullable=False)
    img_file = db.Column(db.String(25), nullable=True)



@app.route("/")
def home():
    flash(" Submitted Successfully....")
    posts = Posts.query.filter_by().all()
    last = math.ceil(len(posts)/int(params['no_of_post']))   #use floor
    # posts=posts[]
    page = request.args.get('page')
    if not str(page).isnumeric():
        page = 1
    page = int(page)
    # Slicing
    posts = posts[(page-1)*int(params['no_of_post']) : (page-1)*int(params['no_of_post']) + int(params['no_of_post'])]
    #pagination logic
    #FIRST PAGE
    if page == 1:
        prev = "#"
        next = "/?page="+ str(page+1)
    elif page == last:
        prev = "/?page=" + str(page - 1)
        next = "#"
    else:
        prev = "/?page=" + str(page - 1)
        next = "/?page=" + str(page + 1)
    return render_template('index.html', params=params, posts=posts, prev=prev, next=next)

@app.route("/")
def index():
    posts = Posts.query.filter_by().all()[0:params['no_of_post']]
    return render_template('index.html', params=params, posts=posts)

@app.route("/about")
def about():
    return render_template('about.html', params=params)


@app.route("/dashboard", methods=['GET', 'POST'])
def dashboard():
    if 'user' in session and session['user'] == params['admin_un']:
        posts = Posts.query.all()
        return render_template('dashboard.html', params=params, posts=posts)
    if request.method == 'POST':
        uname = request.form.get('uname')
        password = request.form.get('password')
        if uname == params['admin_un'] and password == params['adimn_pass']:
            # set the session variable
            session['user'] = uname
            posts = Posts.query.all()
            return render_template('dashboard.html', params=params, posts=posts)
        # REDIRECT TO ADMIN PANEL
    return render_template('login.html', params=params)


@app.route("/post/<string:post_slug>", methods=['GET'])
def route_post(post_slug):
    route_post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html', params=params, post=route_post)


@app.route("/edit/<string:sno>", methods=['GET', 'POST'])
def edit(sno):
    if 'user' in session and session['user'] == params['admin_un']:
        if request.method == 'POST':
            title = request.form.get('title')
            tagline = request.form.get('tagline')
            slug = request.form.get('slug')
            content = request.form.get('content')
            date = datetime.now()
            img_file = request.form.get('img_file')

            if sno == '0':
                post = Posts(title=title, tagline=tagline, slug=slug, content=content, date=date, img_file=img_file)
                db.session.add(post)
                db.session.commit()
            else:
                post = Posts.query.filter_by(sno=sno).first()
                post.title = title
                post.tagline = tagline
                post.slug = slug
                post.content = content
                post.img_file = img_file
                post.date = date
                db.session.commit()
                flash("Changes Submitted Successfully....", "Success")
                return redirect('/edit/' + sno)
        post = Posts.query.filter_by(sno=sno).first()

        return render_template('edit.html', params=params, post=post)

        # return render_template('edit.html', params=params, sno=sno)

@app.route("/newpost", methods=['GET', 'POST'])
def newpost():
    if 'user' in session and session['user'] == params['admin_un'] and request.method == 'POST':
        title = request.form.get('title')
        tagline = request.form.get('tagline')
        slug = request.form.get('slug')
        content = request.form.get('content')
        date = datetime.now()
        img_file = request.form.get('img_file')
        post = Posts(title=title, tagline=tagline, slug=slug, content=content, date=date, img_file=img_file)
        db.session.add(post)
        db.session.commit()
        flash("New Post Added Successfully....", "Success")
    return render_template('newpost.html', params=params)

@app.route("/contact", methods=['GET', 'POST'])
def contact():
    # flash("Submitted Successfully....")
    if (request.method == 'POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone_no = request.form.get('phone_no')
        msg = request.form.get('msg')
        entry = Contact(name=name, phone_no=phone_no, msg=msg, email=email)
        db.session.add(entry)
        db.session.commit()

        # Uncomment following when wnat to receive response from blog on personal mail
        # mail.send_message('New Message from Blog' + name, sender=email, recipients=[params['gmail_uid']],
        #                   body=msg + "\n" + phone_no)
        flash("Feedback Submitted Successfully....", "Success")
    return render_template('contact.html', params=params)

@app.route("/uploader", methods=['GET', 'POST'])
def uploader():
    if 'user' in session and session['user'] == params['admin_un'] and request.method == 'POST':
        f = request.files['file1']
        f.save(os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(f.filename)))
        flash("Uploaded Successfully....", "Success")
    return redirect('/dashboard')


@app.route("/logout")
def logout():
    session.pop('user')
    return redirect('/dashboard')

@app.route("/delete/<string:sno>", methods=['GET', 'POST'])
def delete(sno):
    if 'user' in session and session['user'] == params['admin_un']:
        post = Posts.query.filter_by(sno=sno).first()
        db.session.delete(post)
        db.session.commit()
        flash("Post Deleted....", "Success")
    return redirect('/dashboard')

app.run(debug=True)
