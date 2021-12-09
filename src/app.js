const express=require('express');
const app=express();
const path=require('path')
const port=4000;
//const infoProductosAlmacen=require('./productos.json') //LOS PRODUCTOS DE ALMACEN           console.log(infoProductosAlmacen)
const databaseConnection=require('../config/dataBase')
const routes=require('./routes/tiendaRoutes')



databaseConnection.connect();


//paquetes JSON
app.use(express.urlencoded({extended:false}));

app.use(express.json());
//Viaje de la informacion del Formulario de manera Correcta

//PAQUETE PATH:  uso de EJS y direccion de carpetas Views y Publics
app.set('views', path.join(__dirname,'views'));
app.set('view engine','ejs');//Motor EJS
app.use(express.static(path.join(__dirname,'publics')));//archivos publicos 

// para ir hacia las rutas
app.use('/',routes);

/*ya se hizo en routes
app.get('/',(req,resp)=>{
    resp.render('index')
});


app.get('/registro',(req,resp)=>{
    resp.render('./pages/registro')
});
app.get('/nosotros',(req,resp)=>{
    resp.render('./pages/nosotros')
});
app.get('/contacto',(req,resp)=>{
    resp.render('./pages/contacto')
});

/*app.get('/productosAlmacen',(req,resp)=>{
    resp.render('./pages/productosAlmacen',{ 
   infoAlmacen:infoProductosAlmacen })  //ACA AGREGAMOS PRODCUCTOS ALAMACEN
});*/

/*app.get('/productoLacteos',(req,resp)=>{
    resp.render('./pages/productosLacteos')
});*/
/*
app.get('/productoBebidas',(req,resp)=>{
    resp.render('./pages/productoBebidas')
});
app.get('/productoVeganos',(req,resp)=>{
    resp.render('./pages/productosVeganos')
});
app.get('/frutasVerduras',(req,resp)=>{
    resp.render('./pages/frutasVerduras')
});



*/

//PUERTO:


app.listen(port,()=>{
    console.log('EJECUTANDO EN EL PUERTO 4000')
})