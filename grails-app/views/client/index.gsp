<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name = "layout" content = "main" />
    <title> Meli CAtegorias </title>
</head>
<p>
    Seleciona un sitio:

    <select name="sitios" required>

        <g:each var="c" in="${result.sort { it.name } }">
            <li class="controller">
                <option><g:link>${c.id}</g:link>
                </option>

            </li>
        </g:each>
    </select>

</p>