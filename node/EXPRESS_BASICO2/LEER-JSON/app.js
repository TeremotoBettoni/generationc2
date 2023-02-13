/*var libro = require('./archivos/libros.json');

console.log(libro.autor) //podemos llamar solo ar archivo json o uan propiedas especifica dentro de este
*/
// para impostar el archivo de manera asincrona
var fs = require('fs');

fs.readFile('./archivos/libros.json', (error, datos)=>{
 // antes debemos datos forma o parcear 
    console.log(JSON.parse(datos).autor);
})