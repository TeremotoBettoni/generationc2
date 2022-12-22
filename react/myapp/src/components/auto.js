import React,{useState, useEffect} from 'react';
import {guardarAuto, eliminarAuto, getAllAutos} from "../services/AutoServices";
import ModalAgregarAuto from "../components/modalAgregaAuto";
import ModalEditarAuto from "../components/modalEditarAuto";
//import ArrayAuto from './arrayAuto';

// forma de recivir en una variable un arreglo
const autosInicial=[
    {
        id: 1,
        marca: "",
        color: "",
        nombreUser:"",
        apellidoUser:"",
        usuarioId: 0
    }
];

const AutoComponent = ()=>{
    const [autos,setAutos] = useState(autosInicial);
    const [autoEditar, setAutoEditar]= useState(null);
    const obtenerAutos= async()=>{
        setAutos(await getAllAutos());
    }
    //useEffect: ejecuta una funcion segun el momento del ciclo de vida

    const eliminaAuto=async(autoId)=>{
        await eliminarAuto(autoId)
        setAutos(await getAllAutos())
    }

    const autoAgregar = async(auto)=>{
        await guardarAuto(auto)
        setAutos(await getAllAutos())
    }

    const handleShowEdit = (auto) =>{
        setAutoEditar(auto);
    }


    useEffect(
        ()=>{obtenerAutos()},[]
    );

    return (
        <>
            <div>
                    <p>Respuesta de la api: </p>
                    <div>
                        <ModalEditarAuto autoAgregar={autoAgregar} autoEditar={autoEditar}></ModalEditarAuto>
                        <ModalAgregarAuto autoAgregar={autoAgregar}/>
                    </div>
                    
                    <table className='table'>
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Marca</th>
                                <th>Color</th>
                                <th>Propietario</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                            autos.map(au=>(
                            <tr key={au.id}>
                                <td>{au.id}</td>
                                <td>{au.marca}</td>
                                <td>{au.color}</td>
                                <td>{au.nombreUser} {au.apellidoUser}</td>
                                <td><button className="btn btn-sm btn-outline-danger" onClick={() => handleShowEdit(au)}>Editar</button></td>
                                <td><button className="btn btn-sm btn-outline-danger" onClick={() => eliminaAuto(au.id)}>Eliminar</button></td>
                            </tr>
                            ))
                            }
                        </tbody>
                    </table>
                    
                </div>
        </>
        
    );

}

export default AutoComponent;