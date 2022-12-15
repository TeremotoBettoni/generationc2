import { useState } from "react";

function Ejemplo2() {
//useState 
    const [texto,setTexto]= useState("");
    const [textoInput,setTextoInput]= useState("");
    
    function modificarParrafo(){
        setTexto("texto modificado");
    }
    
    function capturaDatos(e) {
        console.log(e.target.value);//e.target.value captura cada uno de los caracteres ingresados
        setTexto(e.target.value);
        
        // esto es parecido a lo que aplica los motores de busqueda de instagrame, te va ofreciendo resultados segun lo que escribes
    }
    // capturar lo que el usuario esta escribiendo pero no imprimiorlo hasta que le de a boton
    function modificarParrafo2(){
        setTexto(textoInput);
    }

    function capturaDatos2(e2){
        setTextoInput(e2.target.value);
    }

    return (
        <>
            <p>parrafo 1 {texto}</p>
            <input type="text" className="form-control" onChange={capturaDatos}></input>
            <button onClick={modificarParrafo} className='btn btn-success'>Agregar Texto</button>
            
            <p>parrafo 2 {texto}</p>
            <input type="text" className="form-control" onChange={capturaDatos2}></input>
            <button onClick={modificarParrafo2} className='btn btn-success'>Agregar Texto</button>
        </>
    );
}


export default Ejemplo2;