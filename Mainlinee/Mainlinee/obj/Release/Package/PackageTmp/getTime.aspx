<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getTime.aspx.cs" Inherits="Mainlinee.getTime" %>

<%if (Request.QueryString["id"] != null)
    { %>
<% try
    { 
        String idMaquina = Request.Params["id"];
        
        %>
<%=Mainlinee.oshiDAO.getTime(idMaquina)%>
<% }
    catch (Exception ex) { Response.Write(ex); } %>
<% } %>
