
// login cliente
function ingresar(){

    // alert("ha ingresdo")

    var datos={
        "cliente_usuario":document.getElementById("cliente_usuario").value,
        // "cliente_clave":document.getElementById("cliente_clave").value
        "cliente_clave":$("#cliente_clave").val()



    }
    console.log(datos)

    $.ajax({

       type:"post",
       url:"http://localhost:3005/login_cliente",
       data:datos,
       dataType:"json",
       success:function(data){
        console.log(data)
        if(data.existe===1)
        {
            location.href="../index.html"
            console.log("acceso consedido")
        }
        else{
            console.log("no existe")
            alert("Credenciales incorrectas")

        }




       }





    })



}

