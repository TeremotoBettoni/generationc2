//axios
import axios from 'axios';

//establecer la ruta por default

const rutaBase = "http://localhost:9080/api2";

// funcion de el llamado

const getAllAutos =async()=>{ // peticion asincrona que se ejecutara independientemente
    const respuesta = await axios.get(rutaBase+"/autos/getall"); // await significa que esta espernaod la respuesta
    console.log(respuesta.data);
    return respuesta.data;
}

const getAutos =async(id)=>{ // peticion asincrona que se ejecutara independientemente
    const respuesta = await axios.get(rutaBase+"/obtener/auto/"+id); // await significa que esta espernaod la respuesta
    console.log(respuesta.data);
    return respuesta.data;
}

export {getAllAutos, getAutos}