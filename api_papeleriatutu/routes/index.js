const express=require("express")
const router=express.Router()
const bodyParser=require("body-parser")
const urlcodeParser=bodyParser.urlencoded({extended:false})
var app=express()

router.get("/",function(req,res){
	res.send("Mensaje: Soy el API  -  Arriba")


})

// //Insertar Registros tabla Cliente
router.post("/insertar_cliente",urlcodeParser,function(req,res){

    const cliente_nombre=req.body.cliente_nombre
    const cliente_apellido=req.body.cliente_apellido
    const cliente_usuario=req.body.cliente_usuario
    const cliente_clave=req.body.cliente_clave
    const cliente_documento=req.body.cliente_documento
    const cliente_email=req.body.cliente_email
    const cliente_direccion=req.body.cliente_direccion
    const cliente_telefono=req.body.cliente_telefono
		
	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const x=""	
		const consulta=x.concat('insert into cliente(cliente_nombre,cliente_apellido,cliente_usuario,cliente_clave,cliente_documento,cliente_email,cliente_direccion,cliente_telefono) values("',cliente_nombre,'","',cliente_apellido,'","',cliente_usuario,'","',cliente_clave,'","',cliente_documento,'","',cliente_email,'","',cliente_direccion,'","',cliente_telefono,'")')	
		// const consulta=x.concat('INSERT INTO cliente(cliente_nombre,cliente_apellido,cliente_usuario,cliente_clave,cliente_documento,cliente_email,cliente_direccion,cliente_telefono) VALUES("',cliente_nombre,'","',cliente_apellido,'","',cliente_usuario,'","',cliente_clave,'","',cliente_documento,'","',cliente_email,'","',cliente_direccion,'","',cliente_telefono,'")')
		// const consulta=x.concat("INSERT INTO cliente(cliente_nombre,cliente_apellido,cliente_usuario,cliente_clave,cliente_documento,cliente_email,cliente_direccion,cliente_telefono) VALUES(",cliente_nombre,",",cliente_apellido,",",cliente_usuario,",",cliente_clave,",",cliente_documento,",",cliente_email,",",cliente_direccion,",",cliente_telefono,")")

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
					console.log("Usuario Almacenado")
					console.log(result)

				}

			}
		})
	})
})


// // Mostrar Registras tabla Cliente - sentencia funcional en postman
router.post("/MostrarCliente",urlcodeParser,function(req,res){
	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const consulta="select * from cliente"	
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
router.post("/login_cliente",urlcodeParser,function(req,res){
	
	const cliente_usuario= req.body.cliente_usuario
	const cliente_clave=req.body.cliente_clave  

	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const x=""	
		const consulta=x.concat('select * from cliente where cliente_usuario="',cliente_usuario,'" and cliente_clave="',cliente_clave,'"')	
		conn.query(consulta,[req.body],(err,result,rows)=>{
			if(err)
			{
				res.send(err)

			}
			else
			{
				
				if(result.length>0)
				{

					res.status(200).send({ existe:1, userid:result[0].cliente_id})
					console.log(result[0].cliente_id)
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


//mostar con parametros cliente con los parametros - busqueda
router.post("/showuserParametros",urlcodeParser,function(req,res){
		const cliente_usuario= req.body.cliente_usuario
		const cliente_clave=req.body.cliente_clave
	req.getConnection((err,conn)=>{
		if(err) return res.send(err)
		const x=""	
		const consulta=x.concat('select * from cliente where cliente_usuario="',cliente_usuario,'" and cliente_clave="',cliente_clave,'"')	
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


//Actualizar registros por cliente_id
router.post("/actualizar_registros",urlcodeParser, function (req, res) {
  var cliente_email_ = req.body.cliente_email;
   var cliente_nombre_ = req.body.cliente_nombre;
  var cliente_clave_ = req.body.cliente_clave;
   const cliente_id_ = req.body.cliente_id;

   req.getConnection((err, conn) => {
        if (err) return res.send(err)    

           const x="";
           const consulta=x.concat('update cliente set cliente_nombre="',cliente_nombre_,'", cliente_email="',cliente_email_,'", cliente_clave="',cliente_clave_,'" where cliente_id="',cliente_id_,'"')
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

//Eliminar registro por cliente_id
router.post("/borrar_cliente", function (req, res) {
   const cliente_id_ = req.body.cliente_id;
    

   req.getConnection((err, conn) => {
        if (err) return res.send(err)    

           const x="";
           const consulta=x.concat('delete from cliente where cliente_id="',cliente_id_,'"')
    //  console.log(consulta) 
        conn.query(consulta, [req.body],(err, result,fields) => {
                if (err) return res.send(err)  
               	   console.log(result) 
                   res.status(200).send('registro eliminado')
            })
     }) 


});



module.exports=router




