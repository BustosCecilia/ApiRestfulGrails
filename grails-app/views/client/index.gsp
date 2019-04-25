<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> Meli CAtegorias </title>
</head>
<body>
    Seleciona un sitio:
    <select id ="sitios" onchange="llamarController()" data-url="${createLink(controller:'client', action: 'obtenerCategorias')}">
    <g:each var="c" in="${result }">
    <option id="opcion" value = "${c.id}">
        ${c.name}
    </option>
</g:each>
</select>
<asset:javascript src="metodos.js"/>
</body>
<html>