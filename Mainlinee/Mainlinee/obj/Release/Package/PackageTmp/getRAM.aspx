<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getRAM.aspx.cs" Inherits="Mainlinee.getRAM" %>

<%if (Request.QueryString["id"] != null)
    { %>
<% try
    { 
        String idMaquina = Request.Params["id"];
        
        %>
<%=Mainlinee.oshiDAO.getRAM(idMaquina)%>
<% }
    catch (Exception ex) { Response.Write(ex); } %>
<% } %>
