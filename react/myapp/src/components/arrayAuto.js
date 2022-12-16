import React,{Component} from 'react';

class ArrayAuto extends Component {
    render() {
        const autitos = this.props.autitos;
        return(
            <div>
                <p>Respuesta de la api: </p>
                <table className='table'>
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Marca</th>
                            <th>Color</th>
                            <th>Propietario</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                        autitos.map(au=>(
                        <tr key={au.id}>
                            <td>{au.id}</td>
                            <td>{au.marca}</td>
                            <td>{au.color}</td>
                            <td>{au.usuario.nombre} {au.usuario.apellido}</td>
                        </tr>
                        ))
                        }
                    </tbody>
                </table>
                
            </div>
        );
    }
}

export default ArrayAuto;