import React,{Component} from 'react';
import CubiculosContent from './cubiculosContent';
import FoterContent from './foterContent';

class Main extends Component{
    render(){
        return(
            <div>
                <h1>{this.props.titulo}</h1> 
                <CubiculosContent prueba={this.props.prueba} titulo1="Acerca de" contenido="Aplicacion orientada a la resolucion de problemas el colaboracion" />
                <CubiculosContent titulo1="Funcionalidades" contenido="Res de aprendisaje colaboratibo en que se realizan posteos de temas academicos de interes" />
                <CubiculosContent titulo1="Historia" contenido="iniciada en 2022 como proyecto integrador de participantes de botcamp Generation Chile" />
                <FoterContent />
            </div>
        );
    }

}

export default Main;