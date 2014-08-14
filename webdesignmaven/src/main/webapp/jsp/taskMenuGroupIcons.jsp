<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<!-- saved from url=(0055)http://truvenhealth.com/your_healthcare_focus/research/ -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title><fmt:message key="app.title" /></title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="shortcut icon" href="http://truvenhealth.com/images/your-healthcare-focus-favicon.ico?4113508715">

<meta name="apple-touch-fullscreen" content="yes"><meta name="Description" content="Truven Health Analytics | Services and Solutions for the Improvement of Healthcare Cost and Quality">
<meta name="Abstract" content="Truven Health Analytics | Services and Solutions for the Improvement of Healthcare Cost and Quality">
<meta name="Content-Type" content="Truven Health Analytics | Services and Solutions for the Improvement of Healthcare Cost and Quality">

    <!-- JS -->
    <%@ include file="/jsp/include/javascriptLibraries.jsp" %>
	
    </head>
    
    <body>
        <div id="page">
           <!-- Cloud -->
           <div class="topBorder"></div>
           <div class="middleBorder">
           
           <div class="position_content" id="page_position_content">
             
             <%@ include file="/jsp/include/header.jsp" %>
             
             <!-- Content place holder --->
             <div>

    <div class="clearfix colelem" id="middleContent">
        <div class="clearfix colelem" id="middleContentPadding"><!-- group -->
            <div id="middleContainer">
            
            <!-- vertical menu -->
            <!-- left column -->
			<div id="thirtyThreeSplit">
				<!-- vertical menu -->
				
				<div id="thirtyThreeSubMenu">
            	<p>
        			<div id="subAccordion">
        			<h3>Group 1</h3>
						<div>
							<ul class="menu" id="menu1">
								<li id="getComboForm"><a href="${context}/jsp/taskMenuGroups.jsp">Task Menu Groups</a></li>
								<li><a href="#">Task 2</a></li>
            					<li><a href="#">Task 3</a></li>
            					<li><a href="#">Task 4</a></li>
            					<li><a href="#">Task 5</a></li>
        					</ul>
						</div>
        			
        			<h3>Group 2</h3>
						<div>
							<ul class="menu" id="menu2">
								<li><a href="#">Task 1</a></li>
								<li><a href="#">Task 2</a></li>
            					<li><a href="#">Task 3</a></li>
            					<li><a href="#">Task 4</a></li>
            					<li><a href="#">Task 5</a></li>
        					</ul>
						</div>				
				</div>
				
				<script type="text/javascript">
                    	
						$("#subAccordion").accordion({ active: 0, heightStyle: "content" });
				
                    	$( "#menu1" ).menu();
                    	$( "#menu2" ).menu();
                    	
                    	var currentUrl = window.location.href;

                    	// Will only work if string in href matches with location
                    	$('.menu a[href="'+ currentUrl +'"]').addClass('menu-item-focus');

                    	// Will also work for relative and absolute hrefs
                    	$('.menu a').filter(function() {
                    	    return this.href == currentUrl;
                    	}).addClass('menu-item-focus');
                    </script>
                </div>
				
			</div>
            
            </div>
                <div id="mainContent">
                   <div id="mainContentArea">
                   
                   <span class="heading1">Task Menu Group Icons</span>
                   
                   					
					
                </div>   
            </div>
        </div>
	</div>
</div>
<!-- Content place holder end --->
<!-- Footer -->
<%@ include file="/jsp/include/footer.jsp" %>
</div>
<!-- Footer End -->
<div class="bottomBorder">
	<img src="${context}/images/bottomDropShadowBar.png" id="Img1">
</div>
</div>
</div>

</body>
</html>