function actualizarCliente(){

    // alert("funcion andandoS")
    
    var datos={


     "cliente_id":document.getElementById("cliente_id").value,
     "cliente_nombre":document.getElementById("cliente_nombre").value,
     "cliente_apellido":document.getElementById("cliente_apellido").value,
     "cliente_clave":document.getElementById("cliente_clave").value,
     "cliente_email":document.getElementById("cliente_email").value,
     "cliente_direccion":document.getElementById("cliente_direccion").value,
     "cliente_telefono":document.getElementById("cliente_telefono").value,




    }

    console.log(datos)

    $.ajax({

        type:"post",
        url:"http://localhost:3005/actualizar_registros",
        data:datos,
        dataType:"json",
        success:function(data){
         console.log(data)
         if(data.save===1)
         {
             alert("Cliente actualizado")
             location.href="../index.html"
             console.log("Cliente Actualizado")
         }
         else{
             console.log("no actualizado")
             alert("Error No cliente no actualizado")
 
         }
 
 
 
 
        }
 
 
 
 
 
     })






}

