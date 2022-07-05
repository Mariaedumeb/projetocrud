<%-- 
    Document   : frmExcluirPortoVIEW
    Created on : 05/07/2022, 15:11:40
    Author     : Denise
--%>

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
        <div>
        <form action="excluirPorto.jsp" method="POST" style="text-align: center">
            <label>Id: </label>
            <br><input type="text" name="id" value="<%=request.getParameter("id")%>">
              <br> <label>Cliente: </label>
            <br><input type="text" name="cliente" value="<%=request.getParameter("cliente")%>">          
              <br><label>Container: </label>
            <br><input type="text" name="container" value="<%=request.getParameter("container")%>">
              <br><label>Tipo: </label>
            <br><input type="text" name="ti" value="<%=request.getParameter("ti")%>">
              <br><label>Status: </label>
            <br><input type="text" name="sta" value="<%=request.getParameter("sta")%>">
             <br> <label>Categoria: </label>
            <br><input type="text" name="cat" value="<%=request.getParameter("cat")%>">
              <br><label>Movimentacao: </label>
            <br><input type="text" name="mov" value="<%=request.getParameter("mov")%>">
            
            <br><br><button type="submit"> EXCLUIR </button>
        </form>
            </div>
           </body>
</html>
