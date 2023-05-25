<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 14:29:27
    Author     : QI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GameFlix</title>
        <link rel="stylesheet" href="css/style-index.css"/>
        <link rel="icon" href="img/logogame.png"/>
    </head>
    <body>
        <main>
            <img src="img/logogameflix.png" alt="Logogameflix" width="610"/>
        
            <div id="btn-menu-align">
                <div id="btn-btn">
                    <button onclick="window.location.href='cadastro.jsp'" class="btn-menu">Cadastrar</button>
                    <button onclick="window.location.href='lista.jsp'" class="btn-menu">Listar</button>
                </div>
            </div>
        </main>
    </body>
</html>

