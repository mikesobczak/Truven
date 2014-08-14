<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
			    <%@ include file="/jsp/include/formFieldsSubmenu.jsp" %>
			</div>
            
            </div>
                <div id="mainContent">
                   <div id="mainContentArea">
                   
                   <span class="heading1">Mouse-over Link Examples</span>
                   <p>
                <form id="form1" method="get" action="">
                   <h5>Link in the body of the page</h5>
                   	<p>
					There is a link coming up <a class="bodyLink" href="#">right here</a>.

					<p>
					<h5>Mouse-over link with "Help Text"</h5>
					<a class="bodyLink" href="#" title="mouseover popup text">Mouse-over to view help text</a>
					
					<p>
					<h5>Mouse-over link in a menu item</h5>
					
					<div style="width: 100px;">
					<ul class="menu" id="menuA">
						<li><a href="#">A menu link</a></li>
        				<li><a href="#">B menu link</a></li>
        				<li><a href="#">C menu link</a></li>
        				<li><a href="#">D menu link</a></li>
        				<li><a href="#">E menu link</a></li>
    				</ul>
    				</div>

				</form>
					
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

<script>
$("#form1").validate();
</script>
	
<script type="text/javascript">
 	// Call the accordion with all tabs closed
 	$("#subAccordion").accordion({ active: 0, heightStyle: "content", icons: false });
 	
 	$( "#menuA" ).menu();
 	$( "#menuB" ).menu();
 	$( "#menuC" ).menu();
 	$( "#menuD" ).menu();
 	$( "#menuE" ).menu();
 </script>
</body>
</html>