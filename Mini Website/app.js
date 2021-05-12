const express = require("express");
const path = require("path"); 
const app = express();
const port = 80;
const mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/worlddancy', {useNewUrlParser: true, useUnifiedTopology: true});
const bodyparser = require("body-parser");

// npm install mongoose, npm install body-parser
// define mongoose schema
const contactSchema = new mongoose.Schema({
    name: String,
    age: String,
    gender: String,
    email: String,
    address: String
  });
const Contact = mongoose.model('Contact', contactSchema);

// EXPRESS SPECIFIC STUFF
app.use('/static', express.static('static')) // For serving static files
app.use(express.urlencoded())

// PUG SPECIFIC STUFF
app.set('view engine', 'pug') // Set the template engine as pug
app.set('views', path.join(__dirname, 'views')) // Set the views directory
 
// ENDPOINTS
app.get('/', (req, res)=>{ 
    const params = { }
    res.status(200).render('index.pug', params);
})
app.get('/contact', (req, res)=>{ 
    const params = { }
    res.status(200).render('contact.pug', params);
})
app.post('/contact', (req, res)=>{ 
    var myData = new Contact(req.body);
    myData.save().then(()=>{
        res.send("This item has been saved to the MongoDB using Mongoose")
    }).catch(()=>{
        resizeTo.status(400).send("Item was not saved....")
    });

})

// START THE SERVER
app.listen(port, ()=>{
    console.log(`The application started successfully on port ${port}`);
});