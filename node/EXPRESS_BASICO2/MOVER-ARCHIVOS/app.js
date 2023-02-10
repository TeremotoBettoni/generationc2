var fs = require('fs');
// mencionamoas la caprte ay archivo de origen y el de origen junto con el nombre que le queremos dar tambien, que p[uede ser el mismo u otro nombre]
fs.copyFile('./archivos/archivo-original.txt', './otrosArchivos/archivo-original.txt', (error)=>{
    if (error) {
        console.log("error");
    } else { //  aqui mencianemos una fincion adicional en el momentoi que termina el proceso
        fs.writeFile('./archivos/confirmacion.txt', 'archivo copiado OK' , (error)=>{
            console.log("proceso finalizado");
        })
        
        
    }
})