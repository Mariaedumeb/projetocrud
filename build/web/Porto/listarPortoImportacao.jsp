<%-- 
    Document   : listarPortoImportacao
    Created on : 05/07/2022, 16:40:25
    Author     : Denise
--%>

<%@page import="java.util.ArrayList"%>
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
            background-color:#3232CD;
        }
        #divf{
            heigh:200px;
            margin: 20px;
            border: 5px solid;
            background-color:#FFFFFF;
        }
            #botao1 {
          display:inline-block;
        }

    </style>

    <div id="divf">
        <fieldset>
        <legend>Relatório</legend>
        <table align ="center" border ="1px" width="80%">

                <tr>

                    <th>Id</th>

                    <th>Cliente</th>

                    <th>Container</th>

                    <th>Tipo</th>

                    <th>Status</th>

                    <th>Categoria</th>

                    <th>Movimentacao</th>

       
                </tr>


        <%
            int ac=0;
             try {
         PortoDAO objPortoDAO = new PortoDAO();
        ArrayList<PortoDTO> listai = objPortoDAO.PesquisarPortoImportacao();
        for (PortoDTO li:listai){ 

            %>

            <tr> 

              <th><%= li.getId_cliente()%> </th>

              <th><%= li.getNome_cliente()%> </th>

              <th><%= li.getN_container()%> </th>

              <th><%= li.getTipo()%> </th>

              <th><%= li.getSta_tus()%> </th>

              <th><%= li.getCategoria()%> </th>

              <th><%= li.getMovimentacao()%> </th>

            </tr>
            <%  ac++;}} catch (Exception e) {

                 } %>
                 </table>
                 <br>
                 <% out.print("total cadastrados:"+ac);%>
                    </fieldset>
    </div> 
                    <div id="botao1">
          <form action="listarPorto.jsp" method="POST" ">
           <button type="submit">Voltar</button></form>
                    </div>
   
    </body>
</html>
