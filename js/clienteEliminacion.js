function clienteEliminado(){

    // alert("funcion andandoS")
    
    var datos={


     "cliente_id":document.getElementById("cliente_id").value,
     

    }

    console.log(datos)

    $.ajax({

        type:"post",
        url:"http://localhost:3005/borrar_cliente",
        data:datos,
        dataType:"json",
        success:function(data){
         console.log(data)
         if(data.eliminado===1)
         {
             alert("Cliente Eliminado")
             location.href="../index.html"
             console.log("Cliente eliminado")
         }
         else{
             console.log("Cliente NO eliminado")
             alert("Error No cliente no eliminado")
 
         }
 
 
 
 
        }
 
 
 
 
 
     })






}