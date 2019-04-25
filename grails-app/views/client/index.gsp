<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name = "layout" content = "main" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title> Meli CAtegorias </title>
</head>
<body>
    Seleciona un sitio:

    <select id ="sitios" onchange="llamarControler()">

<g:each var="c" in="${result }">
    <option id="opcion" value = "${c.id}">
        ${c.name}
    </option>
</g:each>
</select>
<asset:javascript src="metodos.js"></asset:javascript>
</body>

</p>