const mysql=require('mysql2');
//configuracion de la base de datos

const databaseConnection=mysql.createConnection({

    host:'localhost',
    user:'root',
    database:'entrega_final'

});


//ejecucion de la funcion

databaseConnection.connect((error)=>{

    if(error){
        console.log(error)
    }
    else{
        console.log('CONECTADO A MYSQL')
    }

})

//EXPORTAMOS

module.exports=databaseConnection;