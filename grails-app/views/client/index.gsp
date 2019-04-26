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
<table id="tabla">

</table>
<table id="tabla1">

</table>
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
                console.log("ha£sta aca llego");
                console.log(json);
                json = JSON.stringify(json);
                json = JSON.parse(json);
                $("#tabla tr").remove();
                $.each(json,function(key,value){
                    $("#tabla").append("<tr><td id="+value.id+">"+value.name+"</td></tr>");
                });
                $('#tabla tr td').click(function() {
                    var href = $(this).attr("id");
                    console.log(href)
                    callSubCategorias(href);

                });
            }
        });

    }
    function callSubCategorias(idSubCategoria) {
        console.log("mi subcategoria"+idSubCategoria);
        var URL="${createLink(controller:'client',action:'obtenerCategoriasHijas')}";
        $.ajax({
            type: 'GET',
            url: URL,
            dataype: 'json',
            data: {variabledelControler1:idSubCategoria},
            success: function(json){
                console.log("llame a subcategoria");
                console.log(json);
                json = JSON.stringify(json);
                json = JSON.parse(json);
                console.log(json);
                $("#tabla1 tr").remove();
                $.each(json.children_categories,function(key1,value1){
                    $("#tabla1").append("<tr><td id="+value1.id+">"+value1.name+"</td></tr>");
                });
                

            }
        });
    }
</script>
</body>
<html>