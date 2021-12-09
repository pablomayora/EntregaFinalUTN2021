
//conexion base de datos
const databaseConnection=require('../../config/dataBase');



const renderHome=
    (req,resp)=>{
    resp.render('pages/index')
}
const renderRegistro=
    (req,resp)=>{
        resp.render('pages/registro')
    }

const renderNosotros=(req,resp)=>{
    resp.render('pages/nosotros')
}
const renderContacto=(req,resp)=>{
    resp.render('pages/contacto')
}

//1
const getProductosAlmacen=(req,resp)=>{
    
    databaseConnection.query(`SELECT * FROM productos WHERE id_categoria=1`,(error,data)=>{

        if(error){
            console.log(error)
        }
        else{
            resp.render('pages/productosAlmacen',{data})
        }

    })
  
}

//2
const getProductosBebidas=(req,resp)=>{
    databaseConnection.query(`SELECT * FROM productos WHERE id_categoria=2`,(error,data)=>{

        if(error){
            console.log(error)
        }
        else{
            resp.render('pages/productoBebidas',{data})
        }

    })


}
//3

const getProductosLacteos=(req,resp)=>{
    databaseConnection.query(`SELECT * FROM productos WHERE id_categoria=3`,(error,data)=>{

        if(error){
            console.log(error)
        }
        else{
            resp.render('pages/productosLacteos',{data})
        }

    })


}

//4

const getProductosFrutasVerduras=(req,resp)=>{
    databaseConnection.query('SELECT * FROM productos WHERE id_categoria=4',(error,data)=>{

        if(error){
            console.log(error)
        }
        else{
            resp.render('pages/frutasVerduras',{data})
        }


    })
}






//5
const getProductosVeganos=(req,resp)=>{
    databaseConnection.query('SELECT * FROM productos WHERE id_categoria=5',(error,data)=>{

        if(error){
            console.log(error)
        }
        else{
            resp.render('pages/productosVeganos',{data})
        }


    })
}

//6.Funcion para Cargar usuarios a la BASE DE DATOS

const addNewUsuario=(req,resp)=>{
    const{nombre,apellido,genero,correo,direccion,CodigoArea,telefono}=req.body;//name

    const telefonoCompleto=CodigoArea +"  "+telefono
//conexion a la base de datos
databaseConnection.query('INSERT INTO usuario(nombre,apellido,genero,correo,direccion,telefono)VALUES(?,?,?,?,?,?)',[nombre,apellido,genero,correo,direccion,telefonoCompleto],(error,data)=>{
    if(error){
        console.log(error)
    }
    else{
     resp.redirect('/productosAlmacen')
    }
})




}





//exportamos

module.exports={
    renderHome,
    renderRegistro,
    renderNosotros,
    renderContacto,
    getProductosAlmacen,
    getProductosLacteos,
    getProductosBebidas,
    getProductosFrutasVerduras,
    getProductosVeganos,
    addNewUsuario,
    
}