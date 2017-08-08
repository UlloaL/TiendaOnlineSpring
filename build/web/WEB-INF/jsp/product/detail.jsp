<%-- 
    Document   : detail
    Created on : 04/08/2017, 07:39:00 PM
    Author     : Ancelmo Ulloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="span9">
    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/home.htm">Home</a> <span class="divider">/</span></li>
        <li><a href="${pageContext.request.contextPath }/product/list.htm">Products</a> <span class="divider">/</span></li>
        <li class="active">product Details</li>
    </ul>	
    <div class="row">	  
        <div id="gallery" class="span3">
            <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/${product.photo}" title="Fujifilm FinePix S2950 Digital Camera">
                <img src="${pageContext.servletContext.contextPath }/assets/themes/images/products/${product.photo}" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera">
            </a>
           
            <div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner"> <!--
                    <div class="item active">
                        <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f1.jpg"> <img style="width:29%" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f1.jpg" alt=""></a>
                        <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f2.jpg"> <img style="width:29%" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f2.jpg" alt=""></a>
                        <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f3.jpg"> <img style="width:29%" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f3.jpg" alt=""></a>
                    </div>
                    <div class="item">
                        <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f3.jpg"> <img style="width:29%" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f3.jpg" alt=""></a>
                        <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f1.jpg"> <img style="width:29%" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f1.jpg" alt=""></a>
                        <a href="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f2.jpg"> <img style="width:29%" src="${pageContext.servletContext.contextPath }/assets/themes/images/products/large/f2.jpg" alt=""></a>
                    </div>-->
                </div>
                <!--  
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> 
                -->
            </div>
             
            <div class="btn-toolbar">
                <div class="btn-group">
                    <span class="btn"><i class="icon-envelope"></i></span>
                    <span class="btn"><i class="icon-print"></i></span>
                    <span class="btn"><i class="icon-zoom-in"></i></span>
                    <span class="btn"><i class="icon-star"></i></span>
                    <span class="btn"><i class=" icon-thumbs-up"></i></span>
                    <span class="btn"><i class="icon-thumbs-down"></i></span>
                </div>
            </div>
        </div>
        <div class="span6">
            <h3>${category.name}</h3>
            <small><h4>${product.name} </h4></small>
            <hr class="soft">
            <form class="form-horizontal qtyFrm">
                <div class="control-group">
                    <label class="control-label"><span><h4>Precio</h4>s/. ${product.price}</span></label>
                    <div class="controls">
                        <input type="number" class="span1" placeholder="Qty." value="${s }">
                        <button type="submit" class="btn btn-large btn-primary pull-right">
                            <a href="${pageContext.servletContext.contextPath }/cart/buy/${product.id}.htm">
                            Add to cart</a> <i class=" icon-shopping-cart"></i></button>
                    </div>
                </div>
            </form>

            <hr class="soft">
            <h4>${product.quantity} Productos en Stock</h4>
          <!--  <form class="form-horizontal qtyFrm pull-right">
                <div class="control-group">
                    <label class="control-label"><span>Color</span></label>
                    <div class="controls">
                        <select class="span2">
                            <option>Black</option>
                            <option>Red</option>
                            <option>Blue</option>
                            <option>Brown</option>
                        </select>
                    </div>
                </div>
            </form>-->
            <hr class="soft clr">
            <h4>                
               Description               
            </h4>
            <p>                
                ${product.description}                
            </p>
            <a class="btn btn-small pull-right" href="#detail">More Details</a>
            <br class="clr">
            <a href="#" name="detail"></a>
            <hr class="soft">
        </div>            
        

    </div>
</div>