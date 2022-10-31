function borrarcliente(){

    // alert("funcion andandoS")

   numero=parseInt(document.getElementById("cliente_id").value)
    
    var datos={
        "cliente_id":$("#cliente_id").val()
   }
   
// console.log(JSON.stringify({x2}));
console.log(datos);
$.ajax({
   type:"post",
   url:"http://localhost:3005/delete",
   data:datos,
   dataType:"json",
   success:function(data){
       if(data.eliminado==1)
       {
           console.log('Usuario Eliminado Satisfactoriamente')
           alert('Usuario Eliminado Satisfactoriamente')
           // location.href='../index.html'

       }
       else
       {
           console.log('Error')
           alert('Error - Usuario No Eliminado')

       }


   }

})

}