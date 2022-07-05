<%-- 
    Document   : listarPorto
    Created on : 05/07/2022, 16:41:30
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

                    <th> Deletar </th>

                    <th>Alterar</th>

                </tr>

                

            

            

     

        <%

            int ac=0;

             try {

                     

                

         PortoDAO objPortoDAO = new PortoDAO();

        ArrayList<PortoDTO> lista = objPortoDAO.PesquisarPorto();

      

        

        for (PortoDTO l:lista){

                

            %>

            <tr> 

              <th><%= l.getId_cliente()%> </th>

              <th><%= l.getNome_cliente()%> </th>

              <th><%= l.getN_container()%> </th>

              <th><%= l.getTipo()%> </th>

              <th><%= l.getSta_tus()%> </th>

              <th><%= l.getCategoria()%> </th>

              <th><%= l.getMovimentacao()%> </th>




              <th><a href="frmExcluirPortoVIEW.jsp?id=<%= l.getId_cliente()+

                  "&cliente="+l.getNome_cliente()+"&container="+l.getN_container()+"&ti="+l.getTipo()+

                      "&sta="+l.getSta_tus()+"&cat="+l.getCategoria()+"&mov="+l.getMovimentacao() %>">Excluir</a>

           </th>

          

  <th><a href="frmAlterarPortoVIEW.jsp?id=<%= l.getId_cliente()+

                  "&cliente="+l.getNome_cliente()+"&container="+l.getN_container()+"&ti="+l.getTipo()+

                      "&sta="+l.getSta_tus()+"&cat="+l.getCategoria()+"&mov="+l.getMovimentacao() %>">Alterar</a>

           </th>

           

            </tr>

            <%  ac++;}} catch (Exception e) {

                 } %>

                 

                 </table>

                 <br>

                 <% out.print("total cadastrados:"+ac);%>

                    </fieldset>

    </div>  

                    

             <div id="botao1">    

         <form action="frmPortoVIEW.html" method="POST"   >

         <button type="submit">voltar</button>  </form>  

    </div>

                    <div id="botao1">

          <form action="listarPortoImportacao.jsp" method="POST" ">

           <button type="submit">Relatorio - importacao</button></form>

                    </div>

                    <di id ="botao1">

           <form action="listarPortoExportacao.jsp" method="POST" ">

           <button type="submit">Relatorio - exportacao</button>  </form>

                 </div>
    </body>
</html>
