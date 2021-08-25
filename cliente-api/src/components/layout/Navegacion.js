import React, {Fragment, useContext} from 'react'
import {Link} from 'react-router-dom';
import {CRMContext} from '../../context/CRMContext';
const Navegacion = () => {
    const [auth, guardarAuth] = useContext(CRMContext);
    return ( 
        <Fragment>
        {
            auth.auth ? (
            <aside className="sidebar col-3">
            <h2>Administración</h2>
                <nav className="navegacion">
                    <Link to={"/"} className="clientes">Clientes</Link>
                </nav>
            </aside>
            )
            :null
        }
        
        </Fragment>
    );
}
export default Navegacion;