<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getCPU.aspx.cs" Inherits="Mainlinee.getCPU" %>

<%if (Request.QueryString["id"] != null)
    { %>
<% try
    { 
        String idMaquina = Request.Params["id"];
        
        %>
<%=Mainlinee.oshiDAO.getCPU(idMaquina)%>
<% }
    catch (Exception ex) { Response.Write(ex); } %>
<% } %>
