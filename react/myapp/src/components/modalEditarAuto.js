import React, { useState, useEffect} from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';

const autoValues = [
    {
        id: '',
        marca: "",
        color: "",
        nombreUser:"",
        apellidoUser:"",
        usuarioId: 0
    }
]

const  ModalEditarAuto = ({autoAgregar,autoEditar})=>{
    const [auto, setAuto] = useState(autoValues);
    const {marca, color, usuarioId}= auto;
    const [show, setShow] = useState(false);
    const handleClose = () => setShow(false);

    useEffect( 
        ()=>{
            
            if(autoEditar !== null){
                setAuto(autoEditar)
                setShow(true);
            }else{
                setAuto({
                id:'',
                marca:'',
                color:'',
                usuarioId: 0,
                })
                setShow(false);
            }
        }
        ,[autoEditar]);

        const handleSubmit = (e) => {
            e.preventDefault(); //Esto es para evitar que la pagina se actualize al presionar el button
            autoAgregar(auto);
        };
    
        const handleInputChange = (e) => {
            //...autoNuevo-> es una condicional para que el contenido de autoNuevo se mantenga
            setAuto({ ...auto,
                 [e.target.name]: e.target.value }); //Aqui el event.target.name toma el name de cada input para añadirle datos
        };

    return (
    <>
            <Modal show={show} onHide={handleClose}>
                <Modal.Header closeButton>
                    <Modal.Title>Editar Auto</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <form onSubmit={handleSubmit}>
                        <input type="hidden" value={usuarioId} name="usuarioId"></input>
                        <div className="form-group">
                            <label>Marca</label>
                            <input
                            type="text"
                            className="form-control"
                            id="Marca"
                            placeholder="Marca"
                            value={marca}
                            name="marca"
                            onChange={handleInputChange}
                            />
                            <br />
                        </div>
                        <div className="form-group">
                            <label>Color</label>
                            <input
                            type="text"
                            className="form-control"
                            id="color"
                            placeholder="Color"
                            value={color}
                            name="color"
                            onChange={handleInputChange}
                            />
                            <br />
                        </div>
                        <br />
                        <button type="submit" className="btn btn-outline-primary me-2">
                            Editar
                        </button>
                    </form>
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={handleClose}>
                        Cerrar
                    </Button>
                </Modal.Footer>
            </Modal>
            </>
        );
}

export default  ModalEditarAuto;