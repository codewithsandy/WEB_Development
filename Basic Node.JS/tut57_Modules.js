const fs = require("fs");
let text = fs.readFileSync("test.txt", "utf-8");
text = text.replace("ishu", "Sandesh");

console.log("The content of file is ");
console.log(text)

console.log("create new file");
fs.writeFileSync("sandy.txt", text);