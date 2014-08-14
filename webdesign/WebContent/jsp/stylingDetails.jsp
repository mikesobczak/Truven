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
                   
                   <span class="heading1">Styling Detail Examples</span>
                   <p>
               		<table border=1 >
               			<tr>
               				<th>Element</th>
               				<th>CSS class</th>
               				<th>Font Face</th>
               				<th>Font Size</th>
               				<th>Font Color</th>
               				<th>Font Weight</th>
               				<th>Width</th>
               			</tr>
               			
               			<tr>
               				<td><span class="heading1">Heading 1</span></td>
               				<td>heading1</td>
               				<td>Arial</td>
               				<td>16pt</td>
               				<td>#5C068C</td>
               				<td>Normal</td>
               				<td>Auto</td>
               			</tr>
               			
               			<tr>
               				<td><span class="heading2">Heading 2</span></td>
               				<td>heading2</td>
               				<td>Arial</td>
               				<td>14pt</td>
               				<td>#5C068C</td>
               				<td>Normal</td>
               				<td>Auto</td>
               			</tr>
               			
               			<tr>
               				<td><span class="heading3">Heading 3</span></td>
               				<td>heading3</td>
               				<td>Arial</td>
               				<td>12pt</td>
               				<td>#5C068C</td>
               				<td>Normal</td>
               				<td>Auto</td>
               			</tr>
               			
               			<tr>
               				<td><span class="heading4">Heading 4</span></td>
               				<td>heading4</td>
               				<td>Arial</td>
               				<td>11pt</td>
               				<td>#5C068C</td>
               				<td>Normal</td>
               				<td>Auto</td>
               			</tr>
               			
               			<tr>
               				<td>Plain text</td>
               				<td>(none)</td>
               				<td>Arial</td>
               				<td>10pt</td>
               				<td>#000000</td>
               				<td>Normal</td>
               				<td>Auto</td>
               			</tr>
               			
               			<tr>
               				<td><label class="fieldLabel">Label</label></td>
               				<td>fieldLabel</td>
               				<td>Arial</td>
               				<td>10pt</td>
               				<td>#000000</td>
               				<td>Bold</td>
               				<td>150px</td>
               			</tr>
               			
               			<tr>
               				<td><span class="requiredField"><b>Required Field Message</b></span></td>
               				<td>requiredField</td>
               				<td>Arial</td>
               				<td>10pt</td>
               				<td>#FF0000</td>
               				<td>Bold</td>
               				<td>Auto</td>
               			</tr>
               			
               			<tr>
               				<td class="confirmation">Confirmation Message</td>
               				<td>confirmation</td>
               				<td>Arial</td>
               				<td>12pt</td>
               				<td>#5C068C</td>
               				<td>Bold</td>
               				<td>Auto</td>
               			</tr>
               		</table>
               	
					
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