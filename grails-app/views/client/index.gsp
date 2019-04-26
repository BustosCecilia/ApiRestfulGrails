<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> Meli CAtegorias </title>
    <asset:javascript src="application.js"/>
</head>
<body>
Agencias:
Agregue parametros


<g:form id="formulario" >
    site_id <select id ="site_id" type= "text" >
        <g:each var="c" in="${result }">
            <option id="opcion" value = "${c.id}">
                ${c.name}
            </option>
        </g:each>
    </select>
    payment_method_id:<input id ="payment_method_id"type="text" value="payment_method_id">
    near_to:<input id="near_to" type="text" value="near_to">
    limit: <input id= "limit"type="text" value="limit">
    offset:<input id="offset"type="text" value="offset">
    criterioOrden:<input id="criterioOrden"type="text" value="criterioOrden">
    <input type="submit"onclick ="llamarController()" value="Mandar">

</g:form>


<asset:javascript src="metodos.js"/>
<script>
    function llamarController() {
        console.log("llamarControler");
        var site_id = document.getElementById("site_id").value;
        var payment_method_id = document.getElementById("payment_method_id").value;
        var near_to = document.getElementById("near_to").value;
        var limit = document.getElementById("limit").value;
        var offset= document.getElementById("offset").value;
        var criterioOrden= document.getElementById("criterioOrden").value;
        console.log("llegue aca");
        var URL="${createLink(controller:'client',action:'obtenerAgencias')}";
        $.ajax({
            type: 'GET',
            url: URL,
            dataype: 'json',
            data: {site_id:site_id, payment_method_id:payment_method_id,
                near_to:near_to,limit:limit,offset:offset,criterioOrden:criterioOrden },
            success: function(json){
                console.log("ha£sta aca llego");
                console.log(json);
                json = JSON.stringify(json);
                json = JSON.parse(json);
                $("#tabla1 tr").remove();
                $.each(json,function(key,value){
                    $("#tabla1").append("<tr><td id="+value.id+">"+value.name+"</td></tr>");
                });
            }
        });


    }

</script>
</body>
<html>