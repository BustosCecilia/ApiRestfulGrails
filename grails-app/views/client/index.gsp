<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> Meli CAtegorias </title>
    <asset:javascript src="application.js"/>
</head>
<body>
Seleciona un sitio:
<select id ="sitios" onchange="llamarController()" >
    <g:each var="c" in="${result }">
        <option id="opcion" value = "${c.id}">
            ${c.name}
        </option>
    </g:each>
</select>
<asset:javascript src="metodos.js"/>
<script>
    function llamarController() {
        var id_site = document.getElementById("sitios");
        var codigo_site = id_site.options[id_site.selectedIndex].value;
        console.log(codigo_site);
        var URL="${createLink(controller:'client',action:'obtenerCategorias')}";
        $.ajax({
            type: 'GET',
            url: URL,
            dataype: 'json',
            data: {variabledelControler:codigo_site},
            success: function(json){
                console.log("hasta aca llego");
                console.log(json);
                json = JSON.stringify(json);
                json = JSON.parse(json);
                $.each(json,function(key,value){
                $("body").append(value.name);


                });

              // $('#categorias').append(JSON.stringify(json[0]));


               // console.log(json)

            }
        });

    }
</script>
</body>
<html>