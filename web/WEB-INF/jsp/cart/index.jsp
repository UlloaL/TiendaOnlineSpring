<%-- 
    Document   : index
    Created on : 05/08/2017, 05:02:24 PM
    Author     : Ancelmo Ulloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="span9">
    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/home.htm ">Home</a> <span class="divider">/</span></li>
        <li class="active"> SHOPPING CART</li>
    </ul>
     	
    <hr class="soft">
    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Opcion</th>
                <th>Imagen</th>
                <th>Nombre del Producto</th>
                <th>Precio Unitario (s/.)</th>
                <th>Cantidad</th>
                <th>Sub Total (s/.)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <c:set var="s" value="0"></c:set>
            <c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
            <c:set var="s" value="${s + item.product.price * item.quantity}"></c:set>
            <tr>
                <td><a href="${pageContext.request.contextPath}/cart/delete/${i.index}.htm"><input type="submit" class="btn btn-primary" value="Eliminar"></a></td>
            <td><a href="${pageContext.request.contextPath}/product/detail/${item.product.id}.htm"> <img width="80" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/${item.product.photo}" alt=""></a></td>
                <td>${item.product.name}</td>
                <td>${item.product.price}</td>
                <td>${item.quantity}</td>
                <td>${item.product.price * item.quantity}</td>                
            </tr>
            </c:forEach>          
            <tr>
                <td colspan="5" style="text-align:right">Total (s/.)</td>
                <td> ${s }</td>
            </tr>            
        </tbody>
    </table>

    <table class="table table-bordered">
                <tbody><tr><th> ESTOY REGISTRADO  </th></tr>
                    <tr> 
                        <td>
                            <form method="post" name="register" action="${pageContext.request.contextPath}/account/myaccount.htm">
                                <div class="control-group">
                                    <label class="control-label" for="inputUsername">Username</label>
                                    <div class="controls">
                                        <input type="text" id="inputUsername" placeholder="Username">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword1">Password</label>
                                    <div class="controls">
                                        <input type="password" id="inputPassword1" placeholder="Password">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <input type="submit" class="btn btn-primary" value="login">  <a href="${pageContext.request.contextPath }/account/register.htm" class="btn">Registrarse</a>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <a href="forgetpass.html" style="text-decoration:underline">Forgot password ?</a>
                                    </div>
                                </div>
                            </form>
                        </td>
                    </tr>
                </tbody>
    </table>      	

    <table class="table table-bordered">
        <tbody>
            <tr>
                <td> 
                    <form class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label"><strong> VOUCHERS CODE: </strong> </label>
                            <div class="controls">
                                <input type="text" class="input-medium" placeholder="CODE">
                                <button type="submit" class="btn"> ADD </button>
                            </div>
                        </div>
                    </form>
                </td>
            </tr>

        </tbody>
    </table>

    <table class="table table-bordered">
        <tbody><tr><th>ESTIMATE YOUR SHIPPING </th></tr>
            <tr> 
                <td>
                    <form class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label" for="inputCountry">Country </label>
                            <div class="controls">
                                <input type="text" id="inputCountry" placeholder="Country">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPost">Post Code/ Zipcode </label>
                            <div class="controls">
                                <input type="text" id="inputPost" placeholder="Postcode">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">ESTIMATE </button>
                            </div>
                        </div>
                    </form>				  
                </td>
            </tr>
        </tbody></table>		
    <a href="products.html" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
    <a href="login.html" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>

</div>