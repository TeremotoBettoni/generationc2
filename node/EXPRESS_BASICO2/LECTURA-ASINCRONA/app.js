var fs = require('fs');

fs.readdir('./archivos' , {withFileTypes:true}  , (error, items)=>{ // esto desplegara con tui node app.js un array de la listas de archivos en la carpeta
    // el {withFileTypes:true} permite leer toda la secuencia de carpetas internas tambien
    console.log(items)
})