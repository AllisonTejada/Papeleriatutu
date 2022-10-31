// login administrador
function ingresoAdministrador(){

    // alert("ha ingresdo")

    var datos={
        "usuario_usuario":document.getElementById("usuario_usuario").value,
        // "usuario_clave":document.getElementById("usuario_clave").value
        "usuario_clave":$("#usuario_clave").val()

        

    }
    console.log(datos)
    

    $.ajax({

       type:"post",
       url:"http://localhost:3005/login_administrador",
       data:datos,
       dataType:"json",
       success:function(data){
        console.log(data)
        if(data.existe===1)
        {
            location.href="../html/panel_administardor.html"
            console.log("acceso consedido")
        }
        else{
            console.log("no existe")
            alert("Credenciales incorrectas")

        }




       }





    })



}