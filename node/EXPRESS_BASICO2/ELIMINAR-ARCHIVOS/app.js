var fs = require('fs');
// con esta funcion una vez elimines el archivo no se podra recuparar, ya que no hay una papelera de reciclaje a la que volver
fs.unlink( './archivos/archivo-incorrecto.txt' , (error)=>{

    if (error) {
        console.log("error");
    } else {
        console.log("ok");
    }
})