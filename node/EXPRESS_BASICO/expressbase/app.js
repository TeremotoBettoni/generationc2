var express = require('express');

var app = express();

app.all('/', function(peticion, respuesta){
  respuesta.send("Hola");
});

app.get('/acerca', function(peticion, respuesta){
  respuesta.send("acerca");
});

app.post('/acerca', function(peticion, respuesta){
  respuesta.send("acerca");
});
app.delete('/acerca', function(peticion, respuesta){
  respuesta.send("acerca");
});
app.put('/acerca', function(peticion, respuesta){
  respuesta.send("acerca");
});

var server = app.listen(3000,  function(){

});