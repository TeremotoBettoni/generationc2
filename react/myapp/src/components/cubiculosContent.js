import React,{Component} from 'react';
import Card from 'react-bootstrap/Card';
import Yose from '../components/assets/img/yose.png';
import '../styles/style.css';

class CubiculosContent extends Component{
    render(){
        return(
            <Card style={{ width: '18rem' }} id='cardsMain'>
                <Card.Img variant="top" src={ Yose }/>
                <Card.Body>
                    <Card.Title>{this.props.titulo1}</Card.Title>
                    <Card.Text>
                        {this.props.prueba}
                        {this.props.contenido}
                    </Card.Text>
                </Card.Body>
            </Card>
        );
    }

}

export default CubiculosContent;