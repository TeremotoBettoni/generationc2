var fs = require('fs');

// metodo asincrono encadenado
// mencionamoas la caprte ay archivo de origen y el de origen junto con el nombre que le queremos dar tambien, que p[uede ser el mismo u otro nombre]
/*fs.copyFile('./archivos/archivo-original.txt', './otrosArchivos/archivo-original.txt', (error)=>{
    if (error) {
        console.log("error");
    } else { //  aqui mencianemos una fincion adicional en el momentoi que termina el proceso
        fs.writeFile('./archivos/confirmacion.txt', 'archivo copiado OK' , (error)=>{
            console.log("proceso finalizado");
        })
        
        
    }
})*/

// metodo encadenados, esto es para eliminar de la carpeta de origen despues de copiar, es decir, seria como cortar
function copiarArchivo(rutaOriginar, nuevaRuta, archivoParaCopiar){
    fs.copyFile( rutaOriginar + '/' + archivoParaCopiar, nuevaRuta + '/' + archivoParaCopiar, (error)=>{
        if (error) {
            console.log("error");
        } else { // ahora concatenamos con la funcion de eliminar archivo
            eliminarArchivo(rutaOriginar, archivoParaCopiar)
        }
    })
}

function eliminarArchivo(rutaOriginar, archivoParaCopiar){
    fs.unlink(rutaOriginar + '/' + archivoParaCopiar, (error)=>{
        if (error) {
            console.log("error al eliminar de carpeta original");
        } else { // ahora concatenamos con la funcion de eliminar archivo
            console.log("proceso finalizado con exito");
        }
    })
}
// ya introdicido todos los argiumentos dinamicos, damos la instruccion llamando a nuestra funcion disparadora
copiarArchivo('./archivos', './otrosArchivos', 'archivo-original.txt');