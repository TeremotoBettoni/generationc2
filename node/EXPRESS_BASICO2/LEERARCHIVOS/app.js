var fs = require("fs");

var contenido = fs.readFileSync('./archivos/texto.txt', 'utf8'); /**utf8 es para ller los tipos de caracter */

console.log(contenido)