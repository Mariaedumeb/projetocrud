<%-- 
    Document   : inserirPorto
    Created on : 05/07/2022, 12:38:40
    Author     : Denise
--%>
<%@page import="br.com.DTO.PortoDTO"%>
<%@page import="br.com.DAO.PortoDAO"%>
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
        <div> <h1 style="text-align: center"> Inserção realizada com sucesso!</h1>
        </div>
        <form action="listarPorto.jsp" method="POST" style="text-align: center">
            <br><br><button type="submit">Relatorios</button>
        </form>
        <%
            PortoDTO objPortoDTO = new PortoDTO();
            objPortoDTO.setNome_cliente(request.getParameter("cliente"));
            objPortoDTO.setN_container(request.getParameter("container"));
            objPortoDTO.setTipo(request.getParameter("ti"));
            objPortoDTO.setSta_tus(request.getParameter("sta"));
            objPortoDTO.setCategoria(request.getParameter("cat"));
            objPortoDTO.setMovimentacao(request.getParameter("mov"));
            
            try {
                     PortoDAO objPortoDAO = new PortoDAO();
                objPortoDAO.CadastrarPorto(objPortoDTO);
                } catch (Exception e) {
                }
               
            
            
            
            %>
    </body>
</html>
