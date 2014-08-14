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
            
            <!-- left column -->
			<div id="thirtyThreeSplit" style="background-color: #EFEFF0; min-height: 550px;">
				<!-- vertical menu -->
    			<p>
    			<br>
    			Padding to the left is 25px.
    			<br><br>
    			This area is 27% of the window width.
    			<br><br>
    			The minimum height of this area is 550px.
			</div>
            
            </div>
                <div id="mainContent">
                <div id="mainContentArea">
                   
                   <span class="heading1">Home Page</span>
                   
                   <div>
                   This area is 695px.
                   <br>
                   <br>
                   The minimum height of this area is 550px.
                   <br>
                   <br>
                   Padding for this area is:
                   <br>
                   <br>
                   <ul>
                   <li>top: 20px</li>
                   <li>right: 15px</li>
                   <li>bottom: 20px</li>
                   <li>left: 20px</li>
                   </ul>
                   
                   </div>
                   
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