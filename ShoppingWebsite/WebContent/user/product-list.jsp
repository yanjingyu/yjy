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
  	<link href='${path}http://fonts.useso.com/css?family=Ubuntu:400,700,500,300,400italic,300italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${path}styles/style.css" />
    <link rel="stylesheet" href="${path}styles/inner.css" />
    <link rel="stylesheet" href="${path}styles/layout.css" />
    <link rel="stylesheet" href="${path}styles/color.css" />

    

	<!--[if lt IE 9]>
		<script src="${path}http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="${path}images/favicon.ico" />

    
    
</head>


<body>

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
                           		Language:  <a href="#"><img src="${path}images/eng.png" alt=""/></a> <a href="#"><img src="${path}images/fr.png" alt=""/></a> <a href="#"><img src="${path}images/gr.png" alt=""/></a>
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
                            <a href="${path}index.html"><img src="${path}images/logo.png" alt=""/></a>
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
                            <div class="login">Welcome Visitor, you can <a href="${path}login.jsp"><strong>login</strong></a> or <a href="${path}register.jsp"><strong>create an account</strong></a></div>
    
                        </div>
                    </div>
                    </div>
                </div>
                
                <section id="navigation">
                    <div class="container">
                    <div class="row">
                    <nav id="nav-wrap" class="twelve columns">
                        <ul id="sf-nav" class="sf-menu">
                            <li><a href="${path}index.jsp">Home</a></li>
                            <li><a href="${path}about.html">About Us</a>
                                <ul>
                                    <li><a href="${path}element.html">Elements</a></li>
                                    <li><a href="${path}single.html">Blog Detail</a></li>
                                    <li><a href="#">Dropdown</a>
                                        <ul>
                                            <li><a href="#">Only</a></li>
                                            <li><a href="#">Example of</a></li>
                                            <li><a href="#">The Dropdown</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="current"><a href="${path}product-grid.html">Products</a>
                                <ul>
                                	<li><a href="${path}product-grid.html">Product Grid</a></li>
                                    <li><a href="${path}product-list.jsp">Product List</a></li>
                                    <li><a href="${path}product-details.html">Product Details</a></li>
                                    <li><a href="${path}checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                            <li><a href="${path}portfolio.html">Portfolio</a></li>
                            <li><a href="${path}blog.html">Blog</a></li>
                            <li><a href="${path}contact.html">Contact Us</a></li>
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
                    
                        	<section class="content">
                            
                                <div class="breadcrumb"><a href="${path}index.jsp">Home</a> / Product List </div>
                   				<h1 class="pagetitle">Product List</h1>
                                
                                <div class="sortPagiBar">
                                <form action="${path}index.jsp" class="productsSortForm">
                                    <p class="select">
                                        <label>Sort by</label>
                                        <select>
                                            <option selected="selected" value="position:asc">Default</option>
                                            <option value="price:asc">Price: lowest first</option>
                                            <option value="price:desc">Price: highest first</option>
                                            <option value="name:asc">Product Name: A to Z</option>
                                            <option value="name:desc">Product Name: Z to A</option>
                                            <option value="quantity:desc">In-stock first</option>
                                       	</select>
                                    </p>
                                </form>
                                
                                <form action="index.html" class="productsShowForm">
                                    <p class="select">
                                        <label>Show:</label>
                                        <select>
                                            <option selected="selected"> 4 </option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                       	</select>
                                    </p>
                                </form>
                                <a href="#" class="button">Compare</a>
                                
                                </div>
                                
                                <div class="row">
                                <div id="product-list-container">
                                
                                
                                <c:forEach items="${itemsList }" var="item">
                                	

									 
                                	<div class="product-list-wrapper">
                                        <div class="one_fifth columns product-img">
                                            <a title="Woman's Dress Flower" href="${path}product-details.html"><img src="${path}images/content/products/p-1.jpg" alt=""/></a>
                                        </div>
                                        <div class="three_fifth columns">
                                        	<div class="status"><span>New</span> &nbsp;&nbsp;| &nbsp;&nbsp;Available</div>
                                            <h3><a title="Woman's Dress Flower" href="${path}product-details.html">Woman's Dress Flower</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis purus a arcu porta convallis ut in nunc. Donec elementum erat ipsum, eu consectetur tellus. Morbi et venenatis dui. Quisque at arcu ante, in placerat arcu. Curabitur scelerisque imperdiet elementum.</p>
                                        </div>
                                        <div class="one_fifth columns">
                                            <div class="price-cart-wrapper">
                                                <div class="price">$120.00</div>
                                                <form action="index.html" class="compare">
                                                <input type="checkbox" value="12" id="comparator_item_12" class="comparator" onclick="checkForComparison(3)"> 
                                                <label>Add to Compare</label>
                                                </form>
                                                <div class="but-wrapper">
                                                	<div>${item.images }</div>
                                                	<a href="${path}checkout.htm" class="cart">Add to cart</a>
                                                    <a href="${path}product-details.html"  class="more-link">Read more</a>  
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
										<div class="clear"></div>
                                	</div>
                                  </c:forEach>  
                                </div>    
                                </div>
								<div class="wp-pagenavi">
                                	<a href="#" class="page">1</a><span class="current"><span>2</span></span><a href="#" class="page">3</a> &nbsp;&nbsp;Showing 4 to 4 of 12 (3 Pages)
                            	</div>

							</section>
                         
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
                                        <img src="${path}images/content/products/p-28.jpg" alt="" />
                                        <h3><a href="#">Woman's Couple Shoes</a></h3>
										<div class="price">$120.00</div>
                                    </li>
                                    <li>
                                        <img src="${path}images/content/products/p-20.jpg" alt="" />
                                        <h3><a href="#">Modern Chair</a></h3>
                                        <div class="price">$120.00</div>
                                    </li>
                                </ul>
                            </li>
                            <li class="widget-container">
                                <a href="#"><img src="${path}images/content/banner.gif" alt="" /></a>
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
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="${path}images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="${path}images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="${path}images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="${path}images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="${path}images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="${path}images/content/videohive.png"></a></li>
                        <li><a title="Audio Jungle"  href="#"><img alt="Audio Jungle" src="${path}images/content/audiojungle.png"></a></li>
                        <li><a title="Active Den"  href="#"><img alt="Active Den" src="${path}images/content/activeden.png"></a></li>
                        <li><a title="Graphic River"  href="#"><img alt="Graphic River" src="${path}images/content/graphicriver.png"></a></li>
                        <li><a title="Photo Dune"  href="#"><img alt="Photo Dune" src="${path}images/content/photodune.png"></a></li>
                        <li><a title="Theme Forest"  href="#"><img alt="Theme Forest" src="${path}images/content/themeforest.png"></a></li>
                        <li><a title="Video Hive"  href="#"><img alt="Video Hive" src="${path}images/content/videohive.png"></a></li>
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
                                        <a href="mailto:info@yourdomain.com">info@yourdomain.com</a>
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
                    	Copyright &copy;2012. All Rights Reserved. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                    </div>
                    <ul class="sn">
                        <li><a href="http://twitter.com" title="Twitter"><span class="icon-img twitter"></span></a></li>
                        <li><a href="http://facebook.com" title="Facebook"><span class="icon-img facebook"></span></a></li>
                        <li><a href="https://plus.google.com" title="Google+"><span class="icon-img google"></span></a></li>
                        <li><a href="http://amazon.com" title="Amazon"><span class="icon-img amazon"></span></a></li>
                        <li><a href="http://pinterest.com" title="Pinterest"><span class="icon-img pinterest"></span></a></li>
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
<script type="text/javascript" src="${path}js/jquery-1.7.1.min.js"></script>

<!-- jQuery Superfish -->
<script type="text/javascript" src="${path}js/hoverIntent.js"></script> 
<script type="text/javascript" src="${path}js/superfish.js"></script> 
<script type="text/javascript" src="${path}js/supersubs.js"></script>


<!-- jQuery Carosel Slider -->
<script type="text/javascript" src="${path}js/jquery.elastislide.js"></script>
<script type="text/javascript">
	jQuery('#carousel').elastislide({
		imageW 	: 135,
		margin      : 12
	});
</script>

<!-- jQuery Dropdown Mobile -->
<script type="text/javascript" src="${path}js/tinynav.min.js"></script>

<!-- Custom Script -->
<script type="text/javascript" src="${path}js/custom.js"></script>



</body>
</html>
