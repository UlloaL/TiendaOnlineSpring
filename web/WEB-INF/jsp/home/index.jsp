<%-- 
    Document   : index
    Created on : 04/08/2017, 11:22:59 AM
    Author     : Ancelmo Ulloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<div class="span9">		
    <div class="well well-small">
        <h4>Productos Destacados <small class="pull-right"></small></h4>
        <div class="row-fluid">
            <div id="featured" class="carousel slide">
                <div class="carousel-inner">
                    <div class="item">
                        <ul class="thumbnails">
                            <c:forEach var="product" items="${featuredProducts}">
                            <li class="span3">
                                
                                <div class="thumbnail">
                                    <i class="tag"></i>
                                    <a href="${pageContext.request.contextPath
                                                             }/product/detail/${product.id}.htm"><img src="${pageContext.servletContext.contextPath 
                                                                }/assets/themes/images/products/${product.photo}" alt=""></a>
                                    <div class="caption">
                                        <h5>${product.name}</h5>
                                        <h4><a class="btn" href="${pageContext.request.contextPath }/product/detail/${product.id}.htm">VER</a> <span class="pull-right">s/. ${product.price}</span></h4>
                                    </div>
                                </div>                        
                            </li>
                             </c:forEach>
                        </ul>
                    </div>
                    <div class="item">
                        <ul class="thumbnails">
                            <c:forEach var="product" items="${featuredProducts}">
                            <li class="span3">
                                
                                <div class="thumbnail">
                                    <i class="tag"></i>
                                    <a href="${pageContext.request.contextPath
                                                             }/product/detail/${product.id}.htm"><img src="${pageContext.servletContext.contextPath 
                                                                }/assets/themes/images/products/${product.photo}" alt=""></a>
                                    <div class="caption">
                                        <h5>${product.name}</h5>
                                        <h4><a class="btn" href="${pageContext.request.contextPath }/product/detail/${product.id}.htm">VER</a> <span class="pull-right">s/. ${product.price}</span></h4>
                                    </div>
                                </div>                        
                            </li>
                             </c:forEach>
                        </ul>
                    </div>
                    <div class="item">
                        <ul class="thumbnails">
                            <c:forEach var="product" items="${featuredProducts}">
                            <li class="span3">
                                
                                <div class="thumbnail">
                                    <i class="tag"></i>
                                    <a href="${pageContext.request.contextPath
                                                             }/product/detail/${product.id}.htm"><img src="${pageContext.servletContext.contextPath 
                                                                }/assets/themes/images/products/${product.photo}" alt=""></a>
                                    <div class="caption">
                                        <h5>${product.name}</h5>
                                        <h4><a class="btn" href="${pageContext.request.contextPath }/product/detail/${product.id}.htm">VER</a> <span class="pull-right">s/. ${product.price}</span></h4>
                                    </div>
                                </div>                        
                            </li>
                             </c:forEach>
                        </ul>
                    </div>
                    <div class="item">
                        <ul class="thumbnails">
                            <c:forEach var="product" items="${featuredProducts}">
                            <li class="span3">
                                
                                <div class="thumbnail">
                                    <i class="tag"></i>
                                    <a href="${pageContext.request.contextPath
                                                             }/product/detail/${product.id}.htm"><img src="${pageContext.servletContext.contextPath 
                                                                }/assets/themes/images/products/${product.photo}" alt=""></a>
                                    <div class="caption">
                                        <h5>${product.name}</h5>
                                        <h4><a class="btn" href="${pageContext.request.contextPath }/product/detail/${product.id}.htm">VER</a> <span class="pull-right">s/. ${product.price}</span></h4>
                                    </div>
                                </div>                        
                            </li>
                             </c:forEach>
                        </ul>
                    </div>
                </div>
                <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#featured" data-slide="next">›</a>
            </div>
        </div>
    </div>
    <h4>Productos Recientes </h4>
    <ul class="thumbnails">
        <c:forEach var="product" items="${productsLatest }">
        <li class="span3">
            
            <div class="thumbnail">
                <a href="${pageContext.request.contextPath
                           }/product/detail/${product.id}.htm"><img src="${pageContext.servletContext.contextPath }/assets/themes/images/products/${product.photo}" alt=""></a>
                <div class="caption">
                    <h5>${product.name}</h5>
                    
                    <h4 style="text-align:center"><a class="btn" href="${pageContext.request.contextPath
                                                                         }/product/detail/${product.id}.htm"> <i class="icon-zoom-in"></i></a>
                        <a class="btn" href="${pageContext.servletContext.contextPath }/cart/buy/${product.id}.htm">Add to <i class="icon-shopping-cart"></i></a>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath
                           }/product/detail/${product.id}.htm">s/. ${product.price}</a></h4>
                </div>
            </div>
            
        </li>
        </c:forEach>      
    </ul>	

</div>