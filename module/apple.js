// wxports = module.exports = {};

exports.color = "red";

let name= "default";

exports.setName = function(newName) {
    name = newName;
};

exports.showName = function(){
    console.log(`hello, ${name}`);
};