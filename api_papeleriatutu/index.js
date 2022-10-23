const express=require("express")
const mysql=require("mysql")
const myconn=require("express-myconnection")

// cadena de conexion 

const conexion=mysql.createConnection({
    host:"localhost",
    port:3308,
    user:"root",
    password:"sablereptil2009",
    database:"papeleriatutu2",


});

conexion.connect(function(error){
    if(error){
        console.log("Error de conexion: "+error.stack)


    }
    else{

        console.log("Conexion Exiotosa # de identificador "+conexion.threadId)

    }




})

// informacion de conexion y conexion