var fs = require("fs");
// para leer archivos de texto
// var contenido = fs.readFileSync('./archivos/texto.txt', 'utf8'); /**utf8 es para ller los tipos de caracter */
// para archivos de tipo avi o videos tarda en leerlos pero no en la misma sintaxis
// creamos un proceso none bloquer
fs.readFile('./archivos/texto.txt', 'utf8', (error, datos)=>{
    if (error) {
        console.log("error de lectura");
        throw Error;
    } else {
        console.log(datos)
    }
    
})
//console.log(contenido);