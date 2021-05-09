const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html');
  res.end(`<!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Flex Box</title>
      <style>
          .container{
              height: 100%;
              width: 100%;
              border: 2px solid black;
              /* Initialize the container as a flex box */
              display: flex;
  
              /* Flex properties for flex container */
              /* Default value of flex direction is row; */
              flex-direction: row;
              /* flex-direction: column;
              flex-direction: row-reverse; */
              flex-wrap: wrap;
              /* flex-wrap: wrap-reverse; */
  
              /* how to set both flex wrap and direction */
              /* flex-flow: row-reverse wrap-reverse; */
              
              /* justify-content: center;
              justify-content: space-between;
              justify-content: space-evenly;
              justify-content: space-around; */
              
              /* make vertically center all items in container */
              align-items: center;   
              align-items: stretch;     
  
          }
          .item{
              width: 200px;
              height: 200px;
              background-color: tomato;
              border: 2px solid darkslategray;
              margin: 5px;
              padding: 3px;
          }
  
          #item-1{
              order: 1;
          }
          #item-2{
            flex-grow: 3;
            flex-shrink: 5;
            flex-basis: 320px;
          }
          
          #item-3{
              order: 50;
          }
          #item-4{
              fl
          }
      </style>
  </head>
  <body>
      <h1>This is My Heading Title</h1>
      <div class="container">
          <div class="item" id="item-1">First Box</div>
          <div class="item" id="item-2">Second Box</div>
          <div class="item" id="item-3">Third Box</div>
          <div class="item" id="item-4">Forth Box</div>
          <div class="item" id="item-5">Fifth Box</div>
          <div class="item" id="item-6">Sixth Box</div>
      </div>
  </body>
  </html>`);

});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});