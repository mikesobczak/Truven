<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!-- Header -->
           
             <div class="clearfix colelem" id="master-header">
              <a href="http://truvenhealth.com/" id="logoLink" class="nonblock nontext grpelem">
              <img src="${context}/images/tru_logo_rgb_pos.png" id="logo" alt="Truven Health Analytics" width="222" height="70" class="imageNoBorder">
              </a>
              <div id="logoTitle">Web Design Standards</div>
              <div class="rgba-background clearfix grpelem" id="searchBox">
                 <div id="googleSearch">
                    <form method="get" id="searchform" action="${context}/jsp/searchReturnedNoResults.jsp">
                        <input type="text" id="googleSearchBox" class="textfield" name="q" size="24px" value="Search Truven Health" onfocus="if(this.value=='Search Truven Health')this.value='';">
                        <img src="${context}/images/search_icon.png" id="googleSubmitButton">
                    </form>
                 </div>
              </div>
              <div class="rgba-background clearfix grpelem" id="contactBox">
               <div class="clearfix grpelem" id="contactBoxContent">
					<!-- content -->
					<sec:authorize access="isAnonymous()">
    					<a href="${context}/login.do">Login</a>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
    					<a href="${context}/j_spring_security_logout">Logout</a>
					</sec:authorize>

               </div>
              </div>
             </div>
             
	<div class="clearfix colelem" id="taglineBorder">
    	<div id="header">
		<%@ include file="/jsp/include/headerNav.jsp" %>
		</div>
             <!-- MenuBar End --->
    </div>             