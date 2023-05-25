<%-- 
    Document   : cadastro
    Created on : 4 de mai. de 2023, 15:09:36
    Author     : QI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GameFlix</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="icon" href="img/logogame.png"/>      
    </head>
    <body>
        <center> 
        <h1>Cadastrar</h1>
        <hr>
        <h2>Novo jogo</h2>
        
        <form action="GameController" method="post">
            <center>
 
            <input type="text" name="nome" placeholder="Nome do jogo" maxlength="50" required>
            <br><br>
            
            <textarea name="requisitos" placeholder="Requisitos do sistema" cols="30" rows="5" required></textarea>
            <br><br>
            <textarea name="descricao" placeholder="Descrição do jogo" cols="30" rows="5" required></textarea>
            
            <br><br>
            <input type="submit" value="Cadastrar">
            <input type="reset" value="Limpar">
            
        </form>
        
        <br><hr>
        <a href="index.jsp">Página inicial</a>
    </body>
</html>
