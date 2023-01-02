
//console.log(Buffer(10));// salida que manera los elementos binarios
// sirve para poder enviar recivir y modificar informacion binaria, transformar un archivo, imagen, pdf, etc
//process.env.colorFavorito= "rojo"
//console.log(process.env.colorFavorito);
// TODO RESPECTO A LOS PROCESOS EL, como el sistema operativo (.platform)
//.execPath para saber donde se encuentra el archiovo node
//.env es el enviroment o entorno de trabajo

//const { urlencoded } = require("express")

//Importar paquetes externos como por ejemplo el de moment
//var moment = require('moment');
//console.log(moment('1999-12-31').format('DD/MM/YY').toString());

//Llamar a modiulos locales, como por ejemplo miModulo.js
/*var miModulo = require('./miModulo');
miModulo.multiplicar(10);
miModulo.dividir(60);*/

// paquetes pre instalados
/*http, url // para tyrabajar con elementos externos
path, fs // para tyrabajar con elementos locales*/
//ejemplo
/*var util = require('util');
var http = require('http');

var prueba ="10";
console.log(util.isString(prueba));
console.log(http);*/
// uso de Nodemon para que los cambios en la aplicacion se reflecjen automaticos en la consola
/*console.log("Resultado "+ Math.floor(Math.random()*200));*/

var http= require('http'); // se encarga de guiardar todos los metodos relacionados con la aplicacion y la internet

var servidor = http.createServer( function(){
    console.log("petición web");
});

servidor.listen(3000);

console.log("Ejecutando servidor NoidJS");