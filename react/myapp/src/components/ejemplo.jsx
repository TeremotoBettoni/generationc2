import React,{Component} from 'react';
import Button from 'react-bootstrap/esm/Button';

class Ejemplo extends Component{
// Eventos sinteticos
// el onClick gatilla el llamado a la funcion
// onBlur() onChange() onClick() -> Eventos sinteticos
// STATE
// el valor de las variables en el state son inmutables, no se pueden modificar directamente
    //declaracion de variable
    constructor(props) {
        super(props);
        this.state ={
            encendido: "on"
        }
    }
    //modificacion de variable
    cambiarEstado = ()=>{
        // realizar el cambio con set
        // la forma de cambiar el valor de una variable es con el set.state
        this.setState({encendido: "off"});
    }
    render(){
        return(
            <>
                <p> Estado de la luz: {this.state.encendido} </p>
                <button onClick={()=> alert("Hola Mundo")} type='button' className='btn btn-primary'>Click me</button>
                <button onClick={this.cambiarEstado} type='button' className='btn btn-primary'>Click me 2</button>
                
                <Button variant='primary'>Click me 3</Button>
            </>
        );
    }
}
export default Ejemplo;