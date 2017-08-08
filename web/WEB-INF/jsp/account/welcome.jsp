<%-- 
    Document   : welcome
    Created on : 05/08/2017, 04:12:53 PM
    Author     : Ancelmo Ulloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="span9">
    <div class="well">My account</div>
    <div class="control-group">
        Welcome ${sessionScope.username}
        <br>
        <a href="${pageContext.request.contextPath}/account/logout.htm">Logout</a>
    </div>
    
</div>