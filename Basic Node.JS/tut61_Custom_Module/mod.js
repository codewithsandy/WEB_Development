// ........Create Module........//

console.log("This is Module file");

function average(arr){
    let sum = 0;
    arr.forEach(element => {
        sum += element;
    });
    return sum/arr.length;
}

//Export module
module.exports = average;

//Export object module another method 
module.exports = {
    avg: average,
    name: "Sandy",
    repo: "Github"
}