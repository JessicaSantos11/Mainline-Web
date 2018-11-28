<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getOshi.aspx.cs" Inherits="Mainlinee.getOshi" %>

<% try{ %>
<%=Mainlinee.oshiDAO.getNumeros("MB-1234567890")%>
<% }catch(Exception ex){ Response.Write(ex); } %>
