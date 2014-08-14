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
    
    <!-- jqGrid stuff -->
    <style type="text/css">
	/* This will allow the contents of cells to wrap */
		.ui-jqgrid tr.jqgrow td {
			white-space: normal !important;
 	   		height:auto;
 	   		vertical-align:text-top;
 	   		padding-top:2px;
	}
	</style>
    
	<link rel="stylesheet" type="text/css" media="screen" href="${context}/theme/jqgrid/ui.jqgrid.css" />
    
    <script src="${context}/js/jqgrid/i18n/grid.locale-en.js" type="text/javascript"></script>
	<script src="${context}/js/jqgrid/jquery.jqGrid.min.js" type="text/javascript"></script>
	   
	<script type="text/javascript">
		// Here we set the new text to viewing 
		jQuery.extend(jQuery.jgrid.defaults, { recordtext: "Viewing {0} - {1} of {2}" });
	</script>
	
    <script type="text/javascript">
	var id = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
	    var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
	    return v.toString(16);
	});
	
	var listName = id + "_list";
	var pagerName = id + "_pager";
	var url = "/webdesign/getlogusereventdata.json";
	var columnNames = ['Time', 
	                'Type', 
	                'User', 
	                'Assignment', 
	                /*'Role',*/ 
	                /*'Level',*/ 
	                'Report ID', 
	                /*'Output Type',*/ 
	                'Report Title'/*,
	                'Report Group'*/];
	
	var event_time = {name: "event_time",
			index: "event_time",
			width: 150,
			sortable: true,
			align: "CENTER",
			formatter: "date",
			formatoptions: {srcformat:"Y-m-d H:i:s",newformat:"n/j/Y H:i:s"},
			title: true,
			key: false,
			hidden: false};
	
	var event_type = {name: "event_type",
			index: "event_type",
			width: 50,
			sortable: true,
			title: true,
			key: false,
			hidden: true};
	
	var user_id = {name: "user_id",
					index: "user_id",
					width: 100,
					sortable: true,
					title: true,
					key: false,
					hidden: false};
	
	var assignment = {name: "assignment",
					index: "assignment",
					width: 75,
					sortable: true,
					formatter:"showlink",formatoptions:{baseLinkUrl:"viewUser.do",target:"_blank",idName:"user_id"},
					title: true,
					key: false,
					hidden: false};

	var effective_role_id = {name: "effective_role_id",
			index: "effective_role_id",
			width: 40,
			sortable: true,
			title: true,
			key: false,
			hidden: false};
	
	
	var assignment_level = {name: "assignment_level",
					index: "assignment_level",
					width: 40,
					sortable: true,
					title: true,
					key: false,
					hidden: false};
	
	var report_id = {name: "report_id",
			index: "report_id",
			width: 65,
			sortable: true,
			title: true,
			key: false,
			hidden: false};
	
	var output_type = {name: "output_type",
						index: "output_type",
						width: 100,
						sortable: true,
						title: true,
						key: false,
						hidden: false};
	
	var report_title = {name: "report_title",
			index: "report_title",
			width: 200,
			sortable: true,
			title: true,
			key: false,
			hidden: false};
	
	var report_group = {name: "report_group",
			index: "report_group",
			width: 100,
			sortable: true,
			title: true,
			key: false,
			hidden: false};
	
	var columnModel = [
			event_time,
			event_type,
			user_id,
			assignment,
			/*effective_role_id,*/
			/*assignment_level,*/
			report_id,
			/*output_type,*/
			report_title/*,
			report_group*/];
	
	var rowList = [10, 20, 50];
	
	var displayRows = 10;
	
	var initSortCol = "event_time";
	
	var initSortOrder = "desc";
	
	var multiSelect = false;
	
	var caption = "";
	
	var height = 'auto';
	
	var dataModelRowId = "id";
	
	var x = 1;
	
</script>

<script type="text/javascript">
$(function(){ 
	
	//declare a class level boolean variable as below and then 
	//the following logic in the above code
	var isPagesizelabelPopulated = false;
	
  $("#" + listName).jqGrid({
    url: url,
    datatype: 'json',
    mtype: 'GET',
    colNames: columnNames,
    colModel: columnModel,
    pager: pagerName,
    rowNum: displayRows,
    rowList: rowList,
    sortname: initSortCol,
    sortorder: initSortOrder,
    viewrecords: true,
    multiselect: multiSelect,
    gridview: true,
    caption: caption,
    height: height,
    shrinkToFit: false,
    jsonReader: {
	    	root: 'data',
	    	page: 'currentPage',
	    	total: 'totalPages',
	    	records: 'totalRows',
	    	repeatitems: false,
	    	id: dataModelRowId
	    },
	    
	    /* 2014-03-17 adds text to the rowList drop-down */
	    loadComplete: function () {
	    	if (!isPagesizelabelPopulated)
	        {
	          $('.ui-pg-selbox').closest("td").before("<td dir='ltr'>Results per page: </td>");
	          isPagesizelabelPopulated=true;
	          
	          
	        }
	    }
  }); 
  jQuery("#" + listName).jqGrid('navGrid','#' + pagerName,{edit:false,add:false,del:false,search:false});
  
  // Override default pager icons
  $grid = $("#" + listName);
  $pager = $grid.closest(".ui-jqgrid").find(".ui-pg-table");
  
  $pager.find(".ui-pg-button>span.ui-icon-seek-prev")
      .removeClass("ui-icon ui-icon-seek-prev")
      //.addClass("ui-icon ui-icon-arrowthick-1-w")
      .addClass("ui-icon ui-icon-triangle-1-w")
      ;
      
  $pager.find(".ui-pg-button>span.ui-icon-seek-next")
      .removeClass("ui-icon ui-icon-seek-next")
      //.addClass("ui-icon ui-icon-arrowthick-1-e")
      	.addClass("ui-icon 	ui-icon-triangle-1-e")
      ;
  
  /* Shrink the size of the left part of the navigator so that the 'Rows displayed" text displays propertly */
  var id = "#" + pagerName + "_left";
  $(id).width(25);
  
}); 
</script>
    
    </head>
    
    <body >
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
				<!-- vertical menu -->
			    <%@ include file="/jsp/include/scrollingDataSubmenu.jsp" %>
            
            </div>
                <div id="mainContent">
                   <div id="mainContentArea">
                   		<script type="text/javascript">
					document.write("<table id='" + listName + "'><tr><td/></tr></table>"); 
					document.write("<div id='" + pagerName + "'></div>");
					</script>
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


</body>
</html>