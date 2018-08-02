var data = require( "./package.json" );
console.log( data );

data["scripts"] = {
    "build": "webpack",
    "watch": "webpack -w"
  };

var fs = require('fs');
fs.writeFile('package.json', JSON.stringify(data, null, '    '), "utf8",
 function (err) {
  console.log(err);
});


