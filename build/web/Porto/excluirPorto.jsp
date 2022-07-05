<%-- 
    Document   : excluirPorto
    Created on : 05/07/2022, 15:28:11
    Author     : Denise
--%>

<%@page import="br.com.DAO.PortoDAO"%>
<%@page import="br.com.DTO.PortoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <style>
            body{
             background-color: #3232CD;
            }
            div{
               heigh:200px;
                margin:20px;
                border:5px solid;
                background-color:#ffffff;
            }
        </style>
        <div> <h1 style="text-align: center"> Exclusão realizada com sucesso!</h1>
        </div>
        <form action="listarPorto.jsp" method="POST" style="text-align: center">
            <br><br><button type="submit">Voltar</button>
        </form>
        
        <%  
try {
        PortoDTO objPortoDTO = new PortoDTO();
        objPortoDTO.setId_cliente(Integer.parseInt(request.getParameter("id")));
        
        PortoDAO objPortoDAO = new PortoDAO();
        objPortoDAO.ExcluirPorto(objPortoDTO);
        
    } catch (Exception e) {
    }
        %>
     
    </body>
</html>
