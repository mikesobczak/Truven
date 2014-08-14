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

	<script  type="text/javascript">
	$(document).ready(function () {
			$("#textbox1").focus();
	 });
	</script>
	
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
            <%@ include file="/jsp/include/scrollingDataSubmenu.jsp" %>
            
            </div>
                <div id="mainContent">
                   <div id="mainContentArea">
                   <span class="heading1">Cam Alignment Record</span><p>
                    <form:form method="POST" commandName="camAlignment" action="${context}/getCamAlignment.do">
                   
               
                   	<ul class="formFields">
                   		<li class="formFields"><label class="fieldLabel">Acis:</label><form:input type="text" path="acis" tabindex="1" /></li> 
                   		<li class="formFields"><label class="fieldLabel">Cam Territory:</label><form:input type="text" path="cam_territory" tabindex="2" /></li> 	
                   		<li class="formFields"><label class="fieldLabel">Facility Name:</label><form:input type="text" path="facility_name" tabindex="3" /></li> 	
                   		<li class="formFields"><label class="fieldLabel">Cam Value 1:</label><form:input type="text" path="cam_value1" tabindex="4" /></li> 	
                  	 	<li class="formFields"><label class="fieldLabel">Cam Value 2:</label><form:input type="text" path="cam_value2" tabindex="5" /></li> 	
                   		<li class="formFields"><label class="fieldLabel">Cam Value 3:</label><form:input type="text" path="cam_value3" tabindex="6" /></li> 	
                   		<li class="formFields"><label class="fieldLabel">Na Short Name:</label><form:input type="text" path="na_short_name" tabindex="7" /></li> 	
                   		<li class="formFields"><label class="fieldLabel">FMS AM ID:</label><form:input type="text" path="fms_am_id" tabindex="8" /></li> 	
                   		<li class="formFields"><label class="fieldLabel">DAV ROD ID:</label><form:input type="text" path="dav_rod_id" tabindex="9" /></li> 		
					</ul>
                   <div class="buttonHolder">
						<button type="submit" tabindex="10">Back</button> 
					</div>
					
					</form:form> 
					
					
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
$("#textBoxForm").validate();
</script>
</body>
</html>