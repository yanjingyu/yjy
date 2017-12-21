<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/user/common/path.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>Lastore</title>
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    

	<!-- CSS
  ================================================== -->
  	<link href='${path }http://fonts.useso.com/css?family=Ubuntu:400,700,500,300,400italic,300italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${path }styles/style.css" />
    <link rel="stylesheet" href="${path }styles/inner.css" />
    <link rel="stylesheet" href="${path }styles/layout.css" />
    <link rel="stylesheet" href="${path }styles/color.css" />

    

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="${path }/images/favicon.ico" />
	<script type="text/javascript">
    function checkRegisterForm(){
    //判断登陆名
    var username_ = /^[a-zA-Z_0-9]{3,10}$/;
    //判断密码
    var password_ = /^[a-zA-Z_0-9]{6,20}$/;
    //判断邮箱
    var email_ = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/; //这三行用的是正则表达式，用户名是3到10位的数字字母下划线，密码是6到20位的数字字母下划线
    
    //获得input对象
    var username = document.getElementById("username");//获取的是id值为username的对象 id值！
    var password = document.getElementById("password");
    var confpassword = document.getElementById("confpassword");
    var email = document.getElementById("email");
     if(username == null || username.value == ""){
        alert("用户名不能为空");
         return false;
     }else if(username.value.match(username_)==null){
        alert("您输入的用户名与规定类型不匹配");
        return false;
     }else if(password == null || password.value == ""){
        alert("密码不能为空");
         return false;
     }else if(password.value.match(password_) == null){
        alert("您输入的密码与规定类型不匹配");
        return false;
     }else if(password.value != repassword.value){
    	 alert("两次输入密码不一致");
    	 return false;
     }else if(email == null || email.value == ""){
        alert("email不能为空");
         return false; 
     } else if(email.value.match(email_) == null){
        alert("您输入的邮箱格式不正确");
        return false;
     }
     return true;
}
</script>

    
</head>


<body class="single">

<div id="bodychild">
	<div id="outercontainer">
    
        <!-- HEADER -->
        <div id="outerheader">
        	
            
            <header>
            	<div id="top">
                    <div class="container">
                    <div class="row">
                    	<div id="topmenu" class=" six columns">
                            <ul id="topnav">
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Sitemap</a></li>
                                <li><a href="#">Bookmark</a></li>
                            </ul>
                        </div>
                        <div id="topright" class="six columns">
                        	<div class="language"> 
                           		Language:  <a href="#"><img src="${path}/images/eng.png" alt=""/></a> <a href="#"><img src="${path }/images/fr.png" alt=""/></a> <a href="#"><img src="${path }images/gr.png" alt=""/></a>
                            </div>
                        	<div class="currency"> Currency : <a href="#">€</a> <a href="#">£</a> <a href="#">$</a></div>
                        </div>
                    </div>
                    </div>
            	</div>
                
                <div id="logo-wrapper">
                    <div class="container">
                    <div class="row">
                        <div id="logo" class="six columns">
                            <a href="${path }index.html"><img src="${path}/images/logo.png" alt=""/></a>
                            <span class="desc">Best Solution for your business</span>
                        </div>
                        <div class="right six columns">

                            <form action="#" id="searchform" method="get">
                                
                                <input type="text" onblur="if (this.value == '')this.value = 'Search keywords here';" onfocus="if (this.value == 'Search keywords here')this.value = '';" value="Search keywords here" id="s" name="s" class="field">
                                <input type="submit" value="" class="searchbutton">
                               
                            </form>
                               
                            <div id="shopping-cart-wrapper">
                                <div id="shopping_cart"><a href="#" id="shop-bag">Cart:(empty)</a><a class="btncart" href="#"></a>
                                    <ul class="shop-box">
                                        <li>
                                            <h2>Product1</h2>
                                            <div class="price">1 x $150.00</div>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <h2>Shipping</h2>
                                            <div class="price">1 x $10.00</div>
                                            <div class="clear"></div>
                                        </li>
                                        <li class="total">
                                        	<h2>Total</h2>
                                            <div class="price"> $160.00</div>
                                            <div class="clear"></div>
                                        </li>
                                        <li class="btn-wrapper">
                                            <a href="#" class="cart">Cart</a> <a href="#" class="checkout">Checkout</a>
                                            <div class="clear"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="clear"></div>    
                            <div class="login">Welcome Visitor, you can <a href="${path }login.jsp"><strong>登录</strong></a> or <a href="${path }register.jsp"><strong>注册</strong></a></div>
    
                        </div>
                    </div>
                    </div>
                </div>
                
                <section id="navigation">
                    <div class="container">
                    <div class="row">
                    <nav id="nav-wrap" class="twelve columns">
                        <ul id="sf-nav" class="sf-menu">
                            <li><a href="${path }index.jsp">Home</a></li>
                            <li><a href="${path }about.html">About Us</a>
                                <ul>
                                    <li><a href="${path }element.html">Elements</a></li>
                                    <li><a href="${path }single.html">Blog Detail</a></li>
                                    <li><a href="#">Dropdown</a>
                                        <ul>
                                            <li><a href="#">Only</a></li>
                                            <li><a href="#">Example of</a></li>
                                            <li><a href="#">The Dropdown</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="${path }product-grid.html">Products</a>
                                <ul>
                                	<li><a href="${path }product-grid.html">Product Grid</a></li>
                                    <li><a href="${path }product-list.html">Product List</a></li>
                                    <li><a href="${path }product-details.html">Product Details</a></li>
                                    <li><a href="${path }checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                            <li><a href="${path }portfolio.html">Portfolio</a></li>
                            <li><a href="${path }blog.html">Blog</a></li>
                            <li><a href="${path }contact.html">Contact Us</a></li>
                        </ul><!-- topnav -->
                    </nav><!-- nav -->	
                    </div>
                    </div>
                </section>
                
                <div class="clear"></div>
            </header>           
           
        </div>
        <!-- END HEADER -->


        <!-- MAIN CONTENT -->
        <div id="outermain">
        	<div class="container">
        		
                <div class="row">
                
                    <section id="maincontent" class="ten columns positionleft">
                    	<div class="padcontent">
                    		<form action="${path}doRegister" method="post" enctype="multipart/form-data" onsubmit="return checkRegisterForm();">
                    		
                        	<section class="content" id="register">
                            
                                <div class="breadcrumb"><a href="${path }index.jsp">Home</a> / Register</div>
                                <h1 class="pagetitle">Register</h1>
                                
								<div class="alert">已经注册？ <a href="${path }account.html">点击登录</a></div>
                                <h3>Shipping Address</h3>

                                <div class="row">
                                    <div class="five columns ">
                                        <label for="usernamename" class="">username<span class="required">*</span></label>
                                        <input type="text" class="input-text" name="username" id="username"  value="" />
                                    </div>
                                    <div class="five columns ">
                                        <label for="password" class="">password <span class="required">*</span></label>
                                        <input type="text" class="input-text" name="password" id="password" value="" />
                                    </div>
                                    <div class="clear"></div>
                                    <div class="ten columns ">
                                        <label for="email" class="">email</label>
                                        <input type="text" class="input-text" name="email" id="email"  value="" />
                                    </div>
                                    <div class="clear"></div>
                                     <div class="five columns ">
                                        <label for="confpassword" class="">confpassword <span class="required">*</span></label>
                                        <input type="text" class="input-text" name="confpassword" id="confpassword" value="" />
                                    </div>
                                    ${error1 }
                                    <div class="clear"></div>
                                        <div class="five columns check-account">
                                            <input type="checkbox"  class="comparator" > 
                                            <label>Create an Account</label>
                                        </div>
                                	</div>
                                    <div class="clear"></div>
                                    
                                    <div id="shiptobilling">
                                    <input class="input-checkbox"  checked='checked' type="checkbox" name="shiptobilling" value="1" /> 
                                    <label for="shiptobilling" class="checkbox">Ship to same address?</label>
                                    </div>
                                    <h3 class="margin_bottom_middle">Shipping Address</h3>
                                    <label for="order_comments" class="">Order Notes</label>
                                    <textarea name="order_comments" class="input-text" id="order_comments"  rows="6"></textarea>
                                    <input type="submit" name="submit" class="button mini" id="submit_btn" value="Submit"/>
                    
                               
							</section>
                         </form>
                        </div>
                    </section>
                    
                    <aside class="two columns">
                    
                    	<div class="sidebar">
                        <ul>
                            <li class="widget-container">
                                <h2 class="widget-title">Categories</h2>
                                <ul>
                                    <li><a href="#">Clothing (8)</a>
                                    	<ul>
                                            <li><a href="#">Woman Dress (4)</a></li>
                                            <li><a href="#">Man Suit (4)</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Furniture (4)</a></li>
                                    <li><a href="#">Electronics (4)</a></li>
                                    <li><a href="#">Accessories (4)</a></li>
                                    <li><a href="#">Shoes (4)</a></li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <h2 class="widget-title">Special Offers</h2>
                                <ul class="sp-widget">
                                    <li>
                                        <img src="${path }/images/content/products/p-28.jpg" alt="" />
                                        <h3><a href="#">Woman's Couple Shoes</a></h3>
										<div class="price">$120.00</div>
                                    </li>
                                    <li>
                                        <img src="${path }/images/content/products/p-20.jpg" alt="" />
                                        <h3><a href="#">Modern Chair</a></h3>
                                        <div class="price">$120.00</div>
                                    </li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <a href="#"><img src="${path }/images/content/banner.gif" alt="" /></a>
                            </li>
                        </ul>
                        </div>
                        
                    </aside>
                    
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->
        
        <!-- FOOTER -->
        <footer id="footer">
            <div id="carousel"  class="es-carousel-wrapper">
                <div class="es-carousel">
                    <ul>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="${ctx }/images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="${ctx }/images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="${ctx }/images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="${ctx }/images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="${ctx }/images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="${ctx }/images/content/videohive.png"></a></li>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="${ctx }/images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="${ctx }/images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="${ctx }/images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="${ctx }/images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="${ctx }/images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="${ctx }/images/content/videohive.png"></a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <!-- FOOTER SIDEBAR -->
            <div id="outerfootersidebar">
                <div class="container">
                    <div id="footersidebar" class="row"> 

                        <div id="footcol1"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Information</h2>
                                    <ul>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Terms &amp; Condition</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol2"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Customer Services</h2>
                                    <ul>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">Site Map</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol3"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">My Account</h2>
                                    <ul>
                                        <li><a href="#">Order History</a></li>
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="#">Wish List</a></li>
                                        <li><a href="#">Newsletter</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol4"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Extras</h2>
                                    <ul>
                                        <li><a href="#">Brands</a></li>
                                        <li><a href="#">Affiliates</a></li>
                                        <li><a href="#">Gift Vouchers</a></li>
                                        <li><a href="#">Specials</a></li>
                                    </ul>
                              </li>
                            </ul>
                        </div>
                        <div id="footcol5"  class="one_fifth columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Contact Us</h2>
									<div class="textwidget">
                                        Telp: +62 500 800 123<br>
                                        Fax: +62 500 800 112<br>
                                        <a href="${path }mailto:info@yourdomain.com">info@yourdomain.com</a>
                                    </div>
                              </li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                 
                    </div>
                </div>
            </div>
            <!-- END FOOTER SIDEBAR -->
            
            <!-- COPYRIGHT -->
            <div id="outercopyright">
                <div class="container">
                    <div id="copyright">
                    	Copyright &copy;2012. All Rights Reserved. More Templates <a href="${path }http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="${path }http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                    </div>
                    <ul class="sn">
                        <li><a href="${path }http://twitter.com" title="Twitter"><span class="icon-img twitter"></span></a></li>
                        <li><a href="${path }http://facebook.com" title="Facebook"><span class="icon-img facebook"></span></a></li>
                        <li><a href="${path }https://plus.google.com" title="Google+"><span class="icon-img google"></span></a></li>
                        <li><a href="${path }http://amazon.com" title="Amazon"><span class="icon-img amazon"></span></a></li>
                        <li><a href="${path }http://pinterest.com" title="Pinterest"><span class="icon-img pinterest"></span></a></li>
                    </ul> 
                </div>
            </div>
            <!-- END COPYRIGHT -->
        </footer>
        <!-- END FOOTER -->
        <div class="clear"></div><!-- clear float --> 
	</div><!-- end outercontainer -->
</div><!-- end bodychild -->


<!-- ////////////////////////////////// -->
<!-- //      Javascript Files        // -->
<!-- ////////////////////////////////// -->
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

<!-- jQuery Superfish -->
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<script type="text/javascript" src="js/supersubs.js"></script>

<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="js/jquery.elastislide.js"></script>
<script type="text/javascript">
	jQuery('#carousel').elastislide({
		imageW 	: 135,
		margin      : 12
	});
</script>

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="js/custom.js"></script>



</body>
</html>
