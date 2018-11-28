<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getOshi.aspx.cs" Inherits="Mainlinee.getOshi" %>

<% try{ %>
<%=Mainlinee.oshiDAO.getNumeros(Session["idAtivo"].ToString())%>
<% }catch(Exception ex){ Response.Write(ex); } %>
