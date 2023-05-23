<%-- 
    Document   : lista
    Created on : 4 de mai. de 2023, 15:09:41
    Author     : QI
--%>

<%@page import="model.GameDAO"%>
<%@page import="model.Game"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GameFlix</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="icon" href="img/icon.png"/>
    </head>
    <body>
        <h1>Listar</h1>
        <table>
            <thead>
                <th>CODIGO</th>
                <th>JOGO</th>
                <th>REQUISITOS</th>
                <th>DESCRIÇÃO</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
              <%
                    GameDAO tdao = new GameDAO();
                    for(Game item : tdao.listGame()){
                    %>
                <tr>
                    <td><%= item.getCodGame() %></td>
                    <td><%= item.getNome()%></td>
                    <td><%= item.getRequisitos()%></td>
                    <td><%= item.getDescricao()%></td>
                    <td>
                        <a href="UpdateGame?cod=<%= item.getCodGame() %>">📝</a>
                    </td>
                    <td>
                        <a onclick="confirmaDelete(<%= item.getCodGame() %>, '<%= item.getNome()%>')">❌</a>
                    </td>
                </tr>
              <%
                    }
                    %>
            </tbody>
            
            
        </table>
        
        <br><hr>
        <a href="index.jsp">Página inicial</a>
        
        <script>
                function confirmaDelete(cod, tipo) {
                    if(confirm("Deseja realmente excluir " + tipo + "?")) {
                       window.location.replace("DeleteGame?cod=" + cod); 
                    } else {
                       alert("Exclusão cancelada!");
                    }
                }
           </script>
    </body>
</html>
