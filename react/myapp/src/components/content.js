import React,{Component} from 'react';
import CubiculosContent from './cubiculosContent';
import FoterContent from './foterContent';

class Content extends Component{
    render(){
        return(
            <div>
                <h1>Estoy en el contenedor de main</h1>
                <CubiculosContent />
                <FoterContent />
            </div>
        );
    }

}

export default Content;