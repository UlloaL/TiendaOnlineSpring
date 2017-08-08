<%-- 
    Document   : templateUser
    Created on : 04/08/2017, 11:22:40 AM
    Author     : Ancelmo Ulloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"   uri="http://tiles.apache.org/tags-tiles" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="shop.service.*" %>
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Bootshop online</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--Less styles -->
        <!-- Other Less css file //different less files has different color scheam
             <link rel="stylesheet/less" type="text/css" href="${pageContext.servletContext.contextPath }/assets/themes/less/simplex.less">
             <link rel="stylesheet/less" type="text/css" href="${pageContext.servletContext.contextPath }/assets/themes/less/classified.less">
             <link rel="stylesheet/less" type="text/css" href="${pageContext.servletContext.contextPath }/assets/themes/less/amelia.less">  MOVE DOWN TO activate
        -->
        <!--<link rel="stylesheet/less" type="text/css" href="${pageContext.servletContext.contextPath }/assets/themes/less/bootshop.less">
        <script src="${pageContext.servletContext.contextPath }/assets/themes/js/less.js" type="text/javascript"></script> -->

        <!-- Bootstrap style --> 
        <link id="callCss" rel="stylesheet" href="${pageContext.servletContext.contextPath }/assets/themes/bootshop/bootstrap.min.css" media="screen"/>
        <link href="${pageContext.servletContext.contextPath }/assets/themes/css/base.css" rel="stylesheet" media="screen"/>
        <!-- Bootstrap style responsive -->	
        <link href="${pageContext.servletContext.contextPath }/assets/themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
        <link href="${pageContext.servletContext.contextPath }/assets/themes/css/font-awesome.css" rel="stylesheet" type="text/css">
        <!-- Google-code-prettify -->	
        <link href="${pageContext.servletContext.contextPath }/assets/themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
        <!-- fav and touch icons -->
        <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/assets/themes/images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.servletContext.contextPath }/assets/themes/images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.servletContext.contextPath }/assets/themes/images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.servletContext.contextPath }/assets/themes/images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.servletContext.contextPath }/assets/themes/images/ico/apple-touch-icon-57-precomposed.png">
        <style type="text/css" id="enject"></style>
    </head>
    <body>
        <%
            ApplicationContext applicationContext
                    = RequestContextUtils.getWebApplicationContext(request);
            CategoryService categoryService = (CategoryService) applicationContext.getBean("categoryService");
        %>
        <div id="header">
            <div class="container">
                <div id="welcomeLine" class="row">
                    <div class="span6">Bienvenido!<strong> Ancelmo</strong></div>
                    <div class="span6">
                        <div class="pull-right">
                            <!--
                            <a href="product_summary.html"><span class="">Fr</span></a>
                            <a href="product_summary.html"><span class="">Es</span></a>
                            <span class="btn btn-mini">En</span>
                            <a href="product_summary.html"><span>&pound;</span></a>
                            -->
                            <span class="btn btn-mini"> ${sessionScope.cart != null ?
                                     sessionScope.cart.size() : 0 }  items |
                                    <c:set var="s" value="0"></c:set>
                                    <c:forEach var="item" items="${sessionScope.cart}">
                                        <c:set var="s" value="${s + item.product.price * item.quantity}"></c:set>
                                    </c:forEach>
                                    <span class="red">TOTAL: ${s }</span>
                            </span>
                            
                            <a href="${pageContext.request.contextPath }/cart.htm"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> View Cart </span> </a>
                        </div>
                    </div>
                </div>
                <!-- Navbar ================================================== -->
                <div id="logoArea" class="navbar">
                    <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-inner">
                        <a class="brand" href="${pageContext.request.contextPath}/home.htm "><img src="${pageContext.servletContext.contextPath }/assets/themes/images/logo2.png" alt="Bootsshop"/></a>
                        
                        <ul id="topMenu" class="nav pull-right">
                            <li ${action eq 'home' ? 'class="selected"' : '' }><a href="${pageContext.request.contextPath }/home.htm"><span>Catalogo</span></a></li>
                            <li ${action eq 'specials' ? 'class="selected"' : '' }><a href="${pageContext.request.contextPath }/product/specials.htm"><span>Ofertas</span></a></li>
                            <li ${action eq 'about' ? 'class="selected"' : '' }><a href="${pageContext.request.contextPath }/about.htm"><span>Nosotros</span></a></li>
                            <li ${action eq 'register' ? 'class="selected"' : '' }><a href="${pageContext.request.contextPath }/account/register.htm"><span>Registro</span></a></li>
                         <!-- <li ${action eq 'myaccount' ? 'class="selected"' : '' }><a href="${pageContext.request.contextPath }/account/myaccount.htm"><span class="btn btn-large btn-success">Login</span></a></li>-->
                            <li ${action eq 'contact' ? 'class="selected"' : '' }><a href="${pageContext.request.contextPath }/contact.htm"><span>Contacto</span></a></li>
                            <!-- 
                            <form class="form-inline navbar-search" method="post" action="products.html" >
                            <input id="srchFld" class="srchTxt" type="text" />
                           <select class="srchTxt">
                                <option>All</option>
                                <option>CLOTHES </option>
                                <option>FOOD AND BEVERAGES </option>
                                <option>HEALTH & BEAUTY </option>
                                <option>SPORTS & LEISURE </option>
                                <option>BOOKS & ENTERTAINMENTS </option>
                            </select> 
                            <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
                        </form>-->
                            <li class="">
                                <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span>Login</span></a>
                                <div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h3>Login</h3>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post" name="register" action="${pageContext.request.contextPath}/account/myaccount.htm">
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="text" class="contact_input" name="username" placeholder="User Name">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="password" class="contact_input" name="password" placeholder="Password">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <input type="submit" class="btn btn-primary" value="login"> 
                                                    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
                                                </div>
                                                <div class="controls">
                                                   <a href="${pageContext.request.contextPath }/account/register.htm">Register</a> 
                                                </div>
                                            </div>
                                        </form>	
                                       
                                        
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End====================================================================== 
       <div id="carouselBlk">
            <div id="myCarousel" class="carousel slide">
                
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="container">
                            <a href="register.html"><img style="width:100%" src="${pageContext.servletContext.contextPath }/assets/themes/images/carousel/1.png" alt="special offers"/></a>
                            <div class="carousel-caption">
                                <h4>Second Thumbnail label</h4>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="container">
                            <a href="register.html"><img style="width:100%" src="${pageContext.servletContext.contextPath }/assets/themes/images/carousel/2.png" alt=""/></a>
                            <div class="carousel-caption">
                                <h4>Second Thumbnail label</h4>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="container">
                            <a href="register.html"><img src="${pageContext.servletContext.contextPath }/assets/themes/images/carousel/3.png" alt=""/></a>
                            <div class="carousel-caption">
                                <h4>Second Thumbnail label</h4>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="container">
                            <a href="register.html"><img src="${pageContext.servletContext.contextPath }/assets/themes/images/carousel/4.png" alt=""/></a>
                            <div class="carousel-caption">
                                <h4>Second Thumbnail label</h4>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="container">
                            <a href="register.html"><img src="${pageContext.servletContext.contextPath }/assets/themes/images/carousel/5.png" alt=""/></a>
                            <div class="carousel-caption">
                                <h4>Second Thumbnail label</h4>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="container">
                            <a href="register.html"><img src="${pageContext.servletContext.contextPath }/assets/themes/images/carousel/6.png" alt=""/></a>
                            <div class="carousel-caption">
                                <h4>Second Thumbnail label</h4>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
              
            </div> 
        </div>-->
        <div id="mainBody">
            <div class="container">
                <div class="row">
                    <!-- Sidebar ================================================== -->
                    <div id="sidebar" class="span3">
                        <div class="well well-small"><a id="myCart" href="${pageContext.request.contextPath }/cart.htm"><img src="${pageContext.servletContext.contextPath 
                                                                                                     }/assets/themes/images/ico-cart.png" alt="cart"> ${sessionScope.cart != null ?
                                     sessionScope.cart.size() : 0 }  items en tu Carrito
                                    <c:set var="s" value="0"></c:set>
                                    <c:forEach var="item" items="${sessionScope.cart}">
                                        <c:set var="s" value="${s + item.product.price * item.quantity}"></c:set>
                                    </c:forEach>
                                    <span class="red"></span> <span class="badge badge-warning pull-right">s/. ${s }</span></a></div>
                        <ul id="sideManu" class="nav nav-tabs nav-stacked">
                            <li class="subMenu open"><a>Categorias</a>
                                <ul>
                                    <c:forEach var="category" items="<%= categoryService.findAll()%>">
                                        <li><a href="${pageContext.request.contextPath }/product/category/${category.id}.htm">${category.name }</a></li>
                                    </c:forEach>
                                </ul>
                            </li><!--
                            <li class="subMenu"><a> ROPAS [840] </a>
                                <ul style="display:none">
                                    <c:forEach var="category" items="<%= categoryService.findAll()%>">
                                        <li><a href="#">${category.name }</a></li>
                                    </c:forEach>												
                                </ul>
                            </li>
                            <li class="subMenu"><a>FOOD AND BEVERAGES [1000]</a>
                                <ul style="display:none">
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>Angoves  (35)</a></li>
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>Bouchard Aine & Fils (8)</a></li>												
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>French Rabbit (5)</a></li>	
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>Louis Bernard  (45)</a></li>
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>BIB Wine (Bag in Box) (8)</a></li>												
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>Other Liquors & Wine (5)</a></li>												
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>Garden (3)</a></li>												
                                    <li><a href="products.html"><i class="icon-chevron-right"></i>Khao Shong (11)</a></li>												
                                </ul>
                            </li>
                            <li><a href="products.html">HEALTH & BEAUTY [18]</a></li>
                            <li><a href="products.html">SPORTS & LEISURE [58]</a></li>
                            <li><a href="products.html">BOOKS & ENTERTAINMENTS [14]</a></li>
                        </ul>
                        <br/>
                        <c:forEach var="product" items="${featuredProducts}">
                        <div class="thumbnail">
                            <img src="${pageContext.servletContext.contextPath }/assets/themes/images/products/${product.photo}" alt=""/>
                            <div class="caption">
                                <h5>${product.name}</h5>
                                <h4 style="text-align:center"><a class="btn" href="${pageContext.request.contextPath
                           }/product/detail/${product.id}.htm"> <i class="icon-zoom-in"></i></a> 
                                    <a class="btn" href="${pageContext.servletContext.contextPath }/cart/buy/${product.id}.htm">Add to <i class="icon-shopping-cart"></i></a>
                                    <a class="btn btn-primary" href="${pageContext.request.contextPath
                           }/product/detail/${product.id}.htm">${product.price}</a></h4>
                            </div>
                        </div>
                        </c:forEach> -->   
                            <br/>
                        <div class="thumbnail">
                            <img src="${pageContext.servletContext.contextPath }/assets/themes/images/payment_methods.png" title="Metodos de Pago" alt="Payments Methods">
                            <div class="caption">
                                <h5>Metodos de Pago</h5>
                            </div>
                        </div>
                    </div>
                            
                    <!-- Sidebar end=============================================== -->
                    <div class="span9">		
                
                        <tiles:insertAttribute name="content"></tiles:insertAttribute>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer ================================================================== -->
        <div  id="footerSection">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <h5>ACCOUNT</h5>
                        <a href="login.html">YOUR ACCOUNT</a>
                        <a href="login.html">PERSONAL INFORMATION</a> 
                        <a href="login.html">ADDRESSES</a> 
                        <a href="login.html">DISCOUNT</a>  
                        <a href="login.html">ORDER HISTORY</a>
                    </div>
                    <div class="span3">
                        <h5>INFORMATION</h5>
                        <a href="contact.html">CONTACT</a>  
                        <a href="register.html">REGISTRATION</a>  
                        <a href="legal_notice.html">LEGAL NOTICE</a>  
                        <a href="tac.html">TERMS AND CONDITIONS</a> 
                        <a href="faq.html">FAQ</a>
                    </div>
                    <div class="span3">
                        <h5>OUR OFFERS</h5>
                        <a href="#">NEW PRODUCTS</a> 
                        <a href="#">TOP SELLERS</a>  
                        <a href="special_offer.html">SPECIAL OFFERS</a>  
                        <a href="#">MANUFACTURERS</a> 
                        <a href="#">SUPPLIERS</a> 
                    </div>
                    <div id="socialMedia" class="span3 pull-right">
                        <h5>SOCIAL MEDIA </h5>
                        <a href="#"><img width="60" height="60" src="${pageContext.servletContext.contextPath }/assets/themes/images/facebook.png" title="facebook" alt="facebook"/></a>
                        <a href="#"><img width="60" height="60" src="${pageContext.servletContext.contextPath }/assets/themes/images/twitter.png" title="twitter" alt="twitter"/></a>
                        <a href="#"><img width="60" height="60" src="${pageContext.servletContext.contextPath }/assets/themes/images/youtube.png" title="youtube" alt="youtube"/></a>
                    </div> 
                </div>
                <p class="pull-right">&copy; Bootshop</p>
            </div><!-- Container End -->
        </div>
        <!-- Placed at the end of the document so the pages load faster ============================================= -->
        <script src="${pageContext.servletContext.contextPath }/assets/themes/js/jquery.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath }/assets/themes/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.servletContext.contextPath }/assets/themes/js/google-code-prettify/prettify.js"></script>

        <script src="${pageContext.servletContext.contextPath }/assets/themes/js/bootshop.js"></script>
        <script src="${pageContext.servletContext.contextPath }/assets/themes/js/jquery.lightbox-0.5.js"></script>

        <!-- Themes switcher section ============================================================================================= -->
        <div id="secectionBox">
            <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/assets/themes/switch/themeswitch.css" type="text/css" media="screen" />
            <script src="${pageContext.servletContext.contextPath }/assets/themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
            <div id="themeContainer">
                <div id="hideme" class="themeTitle">Style Selector</div>
                <div class="themeName">Oregional Skin</div>
                <div class="images style">
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="bootshop"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="businessltd"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
                </div>
                <div class="themeName">Bootswatch Skins (11)</div>
                <div class="images style">
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="amelia" title="Amelia"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="spruce" title="Spruce"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="superhero" title="Superhero"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="cyborg"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="cerulean"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="journal"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="readable"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="simplex"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="slate"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="spacelab"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="united"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
                    <p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
                </div>
                <div class="themeName">Background Patterns </div>
                <div class="images patterns">
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern1"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern2"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern3"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern4"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern5"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern6"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern7"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern8"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern9"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern10"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>

                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern11"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern12"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern13"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern14"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern15"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>

                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern16"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern17"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern18"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern19"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
                    <a href="${pageContext.servletContext.contextPath }/assets/themes/css/#" name="pattern20"><img src="${pageContext.servletContext.contextPath }/assets/themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>

                </div>
            </div>
        </div>
        <span id="themesBtn"></span>
    </body>
</html>