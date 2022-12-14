import React,{Component} from 'react';

class Aside extends Component{
    render(){
        return(
            <div>
                <p className='alert alert-primary'>Esto es un parrafo en aside</p>
                <div className='mb-3'>
                    <label htmlFor="exampleFormControlInput1" className="form-label">Email address</label>
                    <input type="email" className='form-control' id="exampleFormControlInput1" placeholder="name@example.com"/>
                </div>
                <div className="mb-3">
                    <label htmlFor="exampleFormControlTextarea1" className="form-label">Example textarea</label>
                    <textarea className='form-control' id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <button type="button" className="btn btn-primary">Primary</button>
            </div>
        );
    }
}

export default Aside;
