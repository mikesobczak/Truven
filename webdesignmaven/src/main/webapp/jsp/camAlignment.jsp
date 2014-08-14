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
	
	var url = "/webdesign/getcamalignmentdata.json";
	var columnNames = ['Acis', 
	                'Cam Territory', 
	                'Facility Name', 
	                'Na Short Name'];
	
	var acis = {name: "acis",
			index: "acis",
			width: 100,
			sortable: true,
            formatter: function (cellvalue, options, rowObject) {
         		var link = '';
         		link = '<a href="' + 'viewCamAlignment.do' + '?acis=' + cellvalue + '" target="_self"' +'>' + cellvalue + '</a>';
         		return link;
             },
			align: "CENTER",
			title: true,
			key: false,
			hidden: false};
	
	var cam_territory = {name: "cam_territory",
			index: "cam_territory",
			width: 100,
			sortable: true,
			align: "CENTER",
			title: true,
			key: false,
			hidden: false};

	var facility_name = {name: "facility_name",
			index: "facility_name",
			width: 200,
			sortable: true,
			align: "LEFT",
			title: true,
			key: false,
			hidden: false};
	
	
	var na_short_name = {name: "na_short_name",
			index: "na_short_name",
			width: 100,
			sortable: true,
			align: "CENTER",
			title: true,
			key: false,
			hidden: false};
	
	var columnModel = [
     			acis,
     			cam_territory,
     			facility_name,
     			na_short_name];
	
	var rowList = [10, 20, 50];
	
	var displayRows = 10;
	
	var initSortCol = "acis";
	
	var initSortOrder = "asc";
	
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
    /*width: 650,*/
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