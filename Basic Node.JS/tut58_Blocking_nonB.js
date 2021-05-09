// Synchronous or Blocking               line by line execution



// A-Synchronous or Non-Blocking         line by line execution not guranted_____callback will fire
const fs = require("fs");
fs.readFile("sandy.txt", "utf-8", (err, data)=>{
    console.log(err, data);
});
console.log("This is my message");
