import React,{useState, useEffect} from 'react';
import {getAllAutos} from "../services/AutoServices";
import ArrayAuto from './arrayAuto';

// forma de recivir en una variable un arreglo
const autosInicial=[
    {
        id: 1,
        marca: "",
        color: "",
        usuario: {}
    }
];

const AutoComponent = ()=>{
    const [autos,setAutos] = useState(autosInicial);

    const obtenerAutos= async()=>{
        setAutos(await getAllAutos());
    }
    //useEffect: ejecuta una funcion segun el momento del ciclo de vida

    useEffect(
        ()=>{obtenerAutos()},[]
    );


    return (
        <>
            <ArrayAuto autitos={autos}/>
        </>
    );

}

export default AutoComponent;