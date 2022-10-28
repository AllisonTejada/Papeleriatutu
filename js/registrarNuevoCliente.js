function nuevoCliente(){

    // alert("funcion andandoS")
    
    var datos={

     "cliente_nombre":document.getElementById("cliente_nombre").value,
     "cliente_apellido":document.getElementById("cliente_apellido").value,
     "cliente_usuario":document.getElementById("cliente_usuario").value,
     "cliente_clave":document.getElementById("cliente_clave").value,
     "cliente_documento":document.getElementById("cliente_documento").value,
     "cliente_email":document.getElementById("cliente_email").value,
     "cliente_direccion":document.getElementById("cliente_direccion").value,
     "cliente_telefono":document.getElementById("cliente_telefono").value,




    }

    console.log(datos)

    $.ajax({

        type:"post",
        url:"http://localhost:3005/insertar_cliente",
        data:datos,
        dataType:"json",
        success:function(data){
         console.log(data)
         if(data.save===1)
         {
             alert("Nuevo Cliente Registrado")
             location.href="../index.html"
             console.log("nuevo Cliente Registrado")
         }
         else{
             console.log("no ingresado")
             alert("Error No insertado nuevo cliente")
 
         }
 
 
 
 
        }
 
 
 
 
 
     })






}