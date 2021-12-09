const express=require ('express');

//callbacs de Controllers

const{renderHome,
    renderNosotros,
    renderContacto,
    getProductosAlmacen,
    getProductosLacteos,
    getProductosBebidas, 
    getProductosFrutasVerduras,
    getProductosVeganos,
    renderRegistro,
    addNewUsuario,

}
=require('../controllers/tiendaControllers');


//Funcion de express para las rutas
const routes=express.Router();


//RUTAS:
routes.get('/',renderHome );
routes.get('/registro',renderRegistro);
routes.get('/nosotros',renderNosotros);
routes.get('/contacto',renderContacto);
routes.get('/productosAlmacen',getProductosAlmacen);
routes.get('/productosLacteos',getProductosLacteos);
routes.get('/productoBebidas',getProductosBebidas);
routes.get('/frutasVerduras',getProductosFrutasVerduras);
routes.get('/productoVeganos',getProductosVeganos);

//metodo POST
routes.post('/registro',addNewUsuario)



//exportaamos

module.exports=routes;