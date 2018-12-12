<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getHD.aspx.cs" Inherits="Mainlinee.getHD" %>

<%if (Request.QueryString["id"] != null)
    { %>
<% try
    { 
        String idMaquina = Request.Params["id"];
        
        %>
<%=Mainlinee.oshiDAO.getHD(idMaquina)%>
<% }
    catch (Exception ex) { Response.Write(ex); } %>
<% } %>
