const { appendFile } = require("fs");

function listar_agendas(){

    var datos={}

    $.ajax({
        type:"post",
        url:"http://localhost:3005/Mostrar_agendas",
        data:datos,
        dataType:"json",
        success:function(data){
            if(data.result.length>0){

                for(i=0;i<data.result.length;i++){

                    $("#agendalista").remove()

                }



                let agendas="";
                for(i=0;i<data.result.length;i++){
                    agendas=data.result[i].producto_codigo+" "+data.result[i].producto_nombre+" "+data.result[i].producto_stock+" "+data.result[i].producto_precioSalida+" "+data.result[i].producto_foto+" "+data.result[i].categoria_id;
                    $("#agendas").append("<p id='agendalista'>"+agendas+"</p>")
                    
                    
                    console.log(agendas)
                    

                }






            }
            else
            {

                alert("no existe registros en la tabla")
                console.log("no existe registros en la tabla")


            }

        }


    })




    // alert("visualizando agendas")


}