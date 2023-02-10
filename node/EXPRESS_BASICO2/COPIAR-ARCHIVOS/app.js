var fs = require('fs');
// primero identificamos el archivo que queremos copiar y luego argnamo el lugar donde queremos que sea copiado y el nombre que tendra
fs.copyFile('./archivos/archivo-origina.txt', './archivos/archivo-nuevo.txt', (error)=>{// hay que estar seguros que la rura en la que se guardarta existe, de otra manera nos arrojara error

    if (error) {
        console.log("Error al copiar archivo")
        throw error;
    } else {
        console.log("Archivo copiado con exito")
    }
});