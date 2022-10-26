const express=require("express")
const mysql=require("mysql")
const myconn=require("express-myconnection")
const app=express()
const indexroutes=require("./routes/index")



//sirve para probar la conexion a la db
//cadena de conexion
const conexion=mysql.createConnection({
	host:"localhost",
	port:3308,
	user:"root",
	password:"sablereptil2009",
	database:"papeleriatutu2"
});


conexion.connect(function(err){
	if(err){
		console.log("Error de conexion:" +err.stack)
		return;
	}else {
		console.log(" Conexion exitosa")
	
	}
	
})
const conexion_2={
	host:"localhost",
	port:3308,
	user:"root",
	password:"sablereptil2009",
	database:"papeleriatutu2"
};

app.use(myconn(mysql,conexion_2,'single'))
app.use(express.json())
app.use("/",indexroutes)

app.listen(3005,function(){
	console.log("Api en el puerto 3005")


})