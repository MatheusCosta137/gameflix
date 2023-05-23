<%-- 
    Document   : cadastro
    Created on : 4 de mai. de 2023, 15:09:36
    Author     : QI
--%>

<%@page import="model.Game" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Game tr = (Game)request.getAttribute("jogo");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar</h1>
        <hr>
        
        <form action="GameController" method="post" id="form">
            <input type="text" name="cod" value="<%= tr.getCodGame() %>" readonly>
            <br><br>
            
            <input type="text" name="nome" value="<%= tr.getNome() %>" required>
            <br><br>
            
            <textarea name="requisitos" required><%= tr.getRequisitos() %></textarea>
            <br><br>
            
            <textarea name="descricao" required><%= tr.getDescricao() %></textarea>
            <br><br>
                       
           
            <input type="submit" value="Atualizar">
            <input type="reset" value="Restaurar">
            
        </form>
        
        <br><hr>
        <a href="index.jsp">Página inicial</a>
        
        <script>
                var form = document.getElementById("form");
                
                form.addEventListener("submit", function(e){
                    if(!confirm("Deseja realmente atualizar?")) {
                        e.preventDefault();
                        alert("Atualização cancelada!");
                        window.location.href="lista.jsp";
                    }
                });
           </script>
        
    </body>
</html>
