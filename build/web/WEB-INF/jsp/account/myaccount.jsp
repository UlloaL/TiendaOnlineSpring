<%-- 
    Document   : myaccount
    Created on : 05/08/2017, 12:32:47 AM
    Author     : Ancelmo Ulloa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="span9">
    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/home.htm">Home</a> <span class="divider">/</span></li>
        <li class="active">Login</li>
    </ul>
    <h3> Login</h3>	
    <hr class="soft">

    <div class="row">
        <!--
        <div class="span4">
            <div class="well">
                <h5>CREATE YOUR ACCOUNT</h5><br>
                Enter your e-mail address to create an account.<br><br><br>
                <form method="post" name="register"
                                action="${pageContext.request.contextPath}/account/myaccount.htm">
                    <div class="control-group">
                        <label class="control-label" for="inputEmail0">E-mail address</label>
                        <div class="controls">
                            <input class="span3" type="text" id="inputEmail0" placeholder="Email">
                        </div>
                    </div>
                    <div class="controls">
                        <button type="submit" class="btn block">Create Your Account</button>
                    </div>
                </form>              
            </div>
        </div>-->
        <div class="span1"> &nbsp;</div>
        <div class="span4">
            <div class="well">
                <h5>ESTAS REGISTRADO ?</h5>
                <form method="post" name="register" action="${pageContext.request.contextPath}/account/myaccount.htm">
                    <div class="control-group">
                        <label class="contact"><strong>Username:</strong></label>
                        <div class="controls">
                            <input type="text" class="contact_input" name="username">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="contact"><strong>Password:</strong></label>
                        <div class="controls">
                            <input type="password" class="contact_input" name="password">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <input type="submit" class="btn btn-primary" value="login"> <a href="forgetpass.html">Forget password?</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>	

</div>
