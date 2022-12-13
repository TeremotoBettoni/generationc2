import React,{Component} from 'react';
import CubiculosContent from './cubiculosContent';
import FoterContent from './foterContent';

class Main extends Component{
    render(){
        return(
            <div>
                <h1>Estoy en el contenedor Azul</h1>
                <CubiculosContent />
                <CubiculosContent />
                <CubiculosContent />
                <FoterContent />
            </div>
        );
    }

}

export default Main;