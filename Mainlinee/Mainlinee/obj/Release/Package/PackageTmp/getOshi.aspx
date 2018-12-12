<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getOshi.aspx.cs" Inherits="Mainlinee.getOshi" %>



<%if (Request.QueryString["id"] != null)
    { %>
<% try
    { 
        String idMaquina = Request.Params["id"];
        
        %>
<%=Mainlinee.oshiDAO.getNumeros(idMaquina)%>
<% }
    catch (Exception ex) { Response.Write(ex); } %>
<% } %>
