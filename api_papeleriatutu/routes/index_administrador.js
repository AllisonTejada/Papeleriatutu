const express=require("express")
const router=express.Router()
const bodyParser=require("body-parser")
const urlcodeParser=bodyParser.urlencoded({extended:false})
var app=express()

router.get("/",function(req,res){
	res.send("Mensaje: Soy el API  -  Arriba")


})

// //Insertar Registros tabla Administrador
router.post("/insertar_administrador",urlcodeParser,function(req,res){

    const usuario_nombre=req.body.usuario_nombre
    const usuario_apellido=req.body.usuario_apellido
    const usuario_usuario=req.body.usuario_usuario
    const usuario_clave=req.body.usuario_clave
    const usuario_documento=req.body.usuario_documento
    const usuario_email=req.body.usuario_email
    const usuario_direccion=req.body.usuario_direccion
    const usuario_telefono=req.body.usuario_telefono

	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const x=""	
		const consulta=x.concat('insert into usuario(usuario_nombre,usuario_apellido,usuario_usuario,usuario_clave,usuario_documento,usuario_email,usuario_direccion,usuario_telefono) values("',usuario_nombre,'","',usuario_apellido,'","',usuario_usuario,'","',usuario_clave,'","',usuario_documento,'","',usuario_email,'","',usuario_direccion,'","',usuario_telefono,'")')	
		

		conn.query(consulta,[req.body],(err,result,rows)=>{
			if(err)
			{
				res.send(err)

			}
			else
			{
				res.status(200).send({save:1})
				if(res.status(200))
				{
					console.log("Administrador Almacenado")
					console.log(result)

				}

			}
		})
	})
})


// // Mostrar Registras tabla Administrador - sentencia funcional en postman
router.post("/Mostrar_Administrador",urlcodeParser,function(req,res){
	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const consulta="select * from usuario"	
		conn.query(consulta,[req.body],(err,result,rows)=>{
			if(err){res.send(err)}
			else{
			 res.status(200).send({result})
			 console.log(result)
			}

		})
	})
})


//login 
router.post("/login_administrador",urlcodeParser,function(req,res){
	
	const usuario_usuario= req.body.usuario_usuario
	const usuario_clave=req.body.usuario_clave  

	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const x=""	
		const consulta=x.concat('select * from usuario where usuario_usuario="',usuario_usuario,'" and usuario_clave="',usuario_clave,'"')	
		conn.query(consulta,[req.body],(err,result,rows)=>{
			if(err)
			{
				res.send(err)

			}
			else
			{
				
				if(result.length>0)
				{

					res.status(200).send({ existe:1, userid:result[0].usuario_id})
					console.log(result[0].usuario_id)
					console.log(result)

				}
				else
				{
					res.status(200).send({ existe:0})
				}

			}
		})
	})
})


//mostar con parametros administrador con los parametros - busqueda
router.post("/administrador_con_parametros",urlcodeParser,function(req,res){
		const usuario_usuario= req.body.usuario_usuario
		const usuario_clave=req.body.usuario_clave
	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const x=""	
		const consulta=x.concat('select * from usuario where usuario_usuario="',usuario_usuario,'" and usuario_clave="',usuario_clave,'"')	
		console.log(consulta)
		conn.query(consulta,[req.body],(err,result,rows)=>{
			if(err){res.send(err)}
			else{
			 res.status(200).send({result})
			 console.log(result)
			}

		})
	})
})


//Actualizar registros por usuario_id
router.post("/actualizar_administrador",urlcodeParser, function (req, res) {
  var usuario_telefono_=req.body.usuario_telefono;
  var usuario_email_ = req.body.usuario_email;
  var usuario_apellido_=req.body.usuario_apellido;
   var usuario_nombre_ = req.body.usuario_nombre;
  var usuario_clave_ = req.body.usuario_clave;
   const usuario_id_ = req.body.usuario_id;

   req.getConnection((err, conn) => {
        if (err) return res.send(err)    

           const x="";
           const consulta=x.concat('update usuario set usuario_nombre="',usuario_nombre_,'", usuario_apellido="',usuario_apellido_,'" , usuario_email="',usuario_email_,'" , usuario_telefono="',usuario_telefono_,'", usuario_clave="',usuario_clave_,'" where usuario_id="',usuario_id_,'"')
      console.log(consulta) 
        conn.query(consulta, [req.body],(err, result,fields) => {
                 if (err)
                { res.send(err)}
                else{   
                        res.status(200).send({ save:1 });                 
                           if(res.status(200))
                           {
                                console.log('Registro Actualizado')
                                console.log(result)

                  
                          }  
                     }  
            })
     }) 

});

//Eliminar registro por administrador_id
router.post("/borrar_usuario",urlcodeParser, function (req, res) {
   const usuario_id_ = req.body.usuario_id;
    

   req.getConnection((err, conn) => {
        if (err) return res.send(err)    

           const x="";
           const consulta=x.concat('delete from usuario where usuario_id="',usuario_id_,'"')
    //  console.log(consulta) 
        conn.query(consulta, [req.body],(err, result,fields) => {
                // if (err) return res.send(err)  
               	//    console.log(result) 
                //    res.status(200).send('registro eliminado')
				if(err)
				{res.send({eliminado:0})}
				else{
					if(res.status(200)){
						res.status(200).send({eliminado:1})
						console.log("Registro eliminado")
					}
				}

				
            })
     }) 


});



module.exports=router