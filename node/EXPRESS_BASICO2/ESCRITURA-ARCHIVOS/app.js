var fs = require('fs');
// con esta podemos generar archivos no esistente o escribir dentro de los que estan aplicando este codigo
/*fs.writeFile('./archivos/texto-nuevo.txt', 'datos enviados desde node', (error)=>{
    if (error) {
        confirm('error al escribir archivo')
    }else{
        console.log('escritura realizada con exito')
    }
})*/

// ahora, si quisieramos modificar el texto exixtente dentro de los archivos agregando mas trexto del ya existentye seria
fs.appendFile('./archivos/texto-nuevo.txt', '  nuevos datos2', (error)=>{
    if (error) {
        confirm('error al escribir archivo')
    }else{
        console.log('escritura realizada con exito')
    }
})