/*function mostrarSaludo(){
    let valor1= "Hola";
    let valor2= " mundo";



    console.log(valor1+" "+valor2);
}
mostrarSaludo();*/
var http= require('http'); // se encarga de guiardar todos los metodos relacionados con la aplicacion y la internet

var servidor = http.createServer( function(peticion, respuesta){
    respuesta.writeHead(200, {'content-type': 'text/html'});
    respuesta.write('Respuesta para la direccion: '+  peticion.url);


    console.log("petición web");
});

servidor.listen(3000);

console.log("Ejecutando servidor NoidJS");
