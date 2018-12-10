<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getRede.aspx.cs" Inherits="Mainlinee.getRede" %>

<%if (Request.QueryString["id"] != null)
    { %>
<% try
    { 
        String idMaquina = Request.Params["id"];
        
        %>
<%=Mainlinee.oshiDAO.getRede(idMaquina)%>
<% }
    catch (Exception ex) { Response.Write(ex); } %>
<% } %>
