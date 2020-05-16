<%@page import="com.van.travel.models.Activity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Destination"%>
<%

	ArrayList<Destination> listDestination = (ArrayList<Destination>) request.getAttribute("listDestination");
	ArrayList<Activity> listActivity = (ArrayList<Activity>) request.getAttribute("listActivity");

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Tour || Admin</title>
	<%@include file="./layout/style.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<%@include file="./layout/sidebar.jsp" %>
		<%@include file="./layout/topbar.jsp" %>
        <div class="right_col" role="main">
			<div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Design <small>different form elements</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="formCreate" action="<%= request.getAttribute("sitePath") %>/admin/tour/create" method="post" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="name" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Thumbnail <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="inputThumbnail" name="thumbnail" required="required" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#inputThumbnail" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage">Upload Image</button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Thumbnail 600x700 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="inputThumbnail600x700" name="thumbnail600x700" required="required" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#inputThumbnail600x700" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage">Upload Image</button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Thumbnail 150x150 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="inputThumbnail150x150" name="thumbnail150x150" required="required" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#inputThumbnail150x150" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage">Upload Image</button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gallery <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12" id="galleryContainer">
                        	<div class="row">
                        		<div class="col-md-8 col-sm-8 col-xs-12">
                          			
		                        </div>
		                        <div class="col-md-4 col-sm-4 col-xs-12">
		                          <button type="button" class="btn btn-success btnAddInputGallery">+</button>
		                        </div>
                        	</div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Videos <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12" id="videosContainer">
                        	<div class="row">
                        		<div class="col-md-8 col-sm-8 col-xs-12">
                          			
		                        </div>
		                        <div class="col-md-4 col-sm-4 col-xs-12">
		                          <button type="button" class="btn btn-success btnAddInputVideos">+</button>
		                        </div>
                        	</div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Map 
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea class="form-control" name="map"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">State <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="state" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nation <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="nation" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea required="required" class="form-control" name="description" data-parsley-maxlength="69"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Star <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" value="5" required="required" name="star" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Days <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="days" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Days Text <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="days_text" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Begin - End time <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="input-prepend input-group">
                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                            <input type="text" name="tour_time" id="reservation" class="form-control">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Original Price <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="0.01" required="required" name="o_price" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Promotional Price <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="0.01" required="required" name="p_price" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Min Age <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="min_age" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Max People <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="max_people" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Registered People <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="registered_people" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Detail Section <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
		                    <div class="btn-group">
		                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
		                      <ul class="dropdown-menu">
		                      </ul>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
		                      <ul class="dropdown-menu">
		                        <li>
		                          <a data-edit="fontSize 5">
		                            <p style="font-size:17px">Huge</p>
		                          </a>
		                        </li>
		                        <li>
		                          <a data-edit="fontSize 3">
		                            <p style="font-size:14px">Normal</p>
		                          </a>
		                        </li>
		                        <li>
		                          <a data-edit="fontSize 1">
		                            <p style="font-size:11px">Small</p>
		                          </a>
		                        </li>
		                      </ul>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
		                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
		                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
		                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
		                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
		                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
		                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
		                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
		                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
		                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
		                      <div class="dropdown-menu input-append">
		                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
		                        <button class="btn" type="button">Add</button>
		                      </div>
		                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
		                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
		                      <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
		                    </div>
		                  </div>
                          <div id="editor-one" class="editor-wrapper"></div>
                          <input type="hidden" name="detail_text">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Departure Location <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="departure_location" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Departure Time <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="form-group">
		                        <div class="input-group date" id="myDatepicker">
		                            <input type="text" class="form-control" name="departure_time" />
		                            <span class="input-group-addon">
		                               <span class="glyphicon glyphicon-calendar"></span>
		                            </span>
		                        </div>
		                    </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Expectation Section <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-two">
		                    <div class="btn-group">
		                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
		                      <ul class="dropdown-menu">
		                      </ul>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
		                      <ul class="dropdown-menu">
		                        <li>
		                          <a data-edit="fontSize 5">
		                            <p style="font-size:17px">Huge</p>
		                          </a>
		                        </li>
		                        <li>
		                          <a data-edit="fontSize 3">
		                            <p style="font-size:14px">Normal</p>
		                          </a>
		                        </li>
		                        <li>
		                          <a data-edit="fontSize 1">
		                            <p style="font-size:11px">Small</p>
		                          </a>
		                        </li>
		                      </ul>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
		                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
		                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
		                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
		                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
		                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
		                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
		                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
		                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
		                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
		                      <div class="dropdown-menu input-append">
		                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
		                        <button class="btn" type="button">Add</button>
		                      </div>
		                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
		                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
		                    </div>
		
		                    <div class="btn-group">
		                      <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
		                      <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
		                    </div>
		                  </div>
                          <div id="editor-two" class="editor-wrapper"></div>
                          <input type="hidden" name="expect_text">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Destination <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="form-group">
		                     <select name="destination_id" class="form-control" required>
		                     	<% for(Destination des : listDestination){ %>
	                            <option value="<%= des.getId() %>"><%= des.getName() %></option>
	                            <% } %>
	                          </select>
		                    </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Services <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                    <div class="accordion" id="accordion2" role="tablist" aria-multiselectable="true">
		                      
		                    </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddService" type="button" class="btn btn-primary">Add Service</button></div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Itineraries <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                    <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
		                      
		                    </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddItinerary" type="button" class="btn btn-primary">Add Itinerary</button></div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Activities <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="checkbox">
                          	<% for(Activity act : listActivity){ %>
                          		<label style="margin-bottom: 5px;"><input type="checkbox" value="<%= act.getId() %>" name="activities[]" class="flat" > <%= act.getName() %></label>
                          	<% } %>
                          </div>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <a class="btn btn-primary" href="<%= request.getAttribute("sitePath") %>/admin/tour">Cancel</a>
						  <button class="btn btn-primary" type="reset">Reset</button>
                          <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
		</div>
		
		
		
		<%@include file="./layout/footer.jsp" %>
      </div>
    </div>
    <%@include file="./layout/scripts.jsp" %>
    
    <%@include file="./layout/upload.jsp" %>
    
    <!-- Parsley -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/parsleyjs/dist/parsley.min.js"></script>
	<script>
		$('#myDatepicker').datetimepicker({format: 'MM-DD-YYYY HH:mm:ss', defaultDate: new Date()});
	</script>
    <script>
	    $('#formCreate').on('submit', function() {
		  $('#formCreate input[name="detail_text"]').val($('#editor-one').html());
		  $('#formCreate input[name="expect_text"]').val($('#editor-two').html());
		  $('#formCreate .editor-itinerary').each(function(){
			  var content = $(this).html();
			  $(this).siblings('input[name="itineraries_description[]"]').val(content);
		  });
		  $('#formCreate .input-status-service').each(function(){
			  var content = $(this).is(":checked") ? 1 : 0;
			  $(this).siblings('input[name="services_status[]"]').val(content);
		  });
		});
    </script>
    <script>
    	var binCountAddItinerary = 0;
    	$('#btnAddItinerary').click(function(){
    		binCountAddItinerary++;
    		var tempMark = "tempMarkItinerary" + binCountAddItinerary;
    		var templateToolbarEditor = '<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-'+tempMark+'"> <div class="btn-group"> <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a> <ul class="dropdown-menu"> </ul> </div><div class="btn-group"> <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a> <ul class="dropdown-menu"> <li> <a data-edit="fontSize 5"> <p style="font-size:17px">Huge</p></a> </li><li> <a data-edit="fontSize 3"> <p style="font-size:14px">Normal</p></a> </li><li> <a data-edit="fontSize 1"> <p style="font-size:11px">Small</p></a> </li></ul> </div><div class="btn-group"> <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a> <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a> <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a> <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a> </div><div class="btn-group"> <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a> <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a> <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a> <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a> </div><div class="btn-group"> <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a> <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a> <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a> <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a> </div><div class="btn-group"> <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a> <div class="dropdown-menu input-append"> <input class="span2" placeholder="URL" type="text" data-edit="createLink"/> <button class="btn" type="button">Add</button> </div><a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a> </div><div class="btn-group"> <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a> <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage"/> </div><div class="btn-group"> <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a> <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a> </div></div>';
			var template = '';
			template+='  <div id="panel-'+tempMark+'" class="panel">';
			template+='    <a class="panel-heading" role="tab" id="heading'+tempMark+'" data-toggle="collapse" data-parent="#accordion" href="#collapse'+tempMark+'" aria-expanded="true" aria-controls="collapse'+tempMark+'">';
			template+='      <h4 class="panel-title">[New Itinerary] #Undefined</h4>';
			template+='    </a>';
			template+='    <div id="collapse'+tempMark+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading'+tempMark+'">';
			template+='      <div class="panel-body">';
			template+='      		<div class="form-group">';
			template+='      	 		<label class="control-label">Sequence <span class="required">*</span></label>';
			template+='      	 		<div>';
			template+='      	 			<input type="number" step="1" required="required" name="itineraries_sequence[]" class="form-control">';
			template+='      	 		</div>';
			template+='      	 	</div>';
			template+='      	 	<div class="form-group">';
			template+='      	 		<label class="control-label">Name <span class="required">*</span></label>';
			template+='      	 		<div>';
			template+='      	 			<input type="text" required="required" name="itineraries_name[]" class="form-control">';
			template+='      	 		</div>';
			template+='      	 	</div>';
			template+='      	 	<div class="form-group">';
			template+='      	 		<label class="control-label">Description Text <span class="required">*</span></label>';
	        template+='              	<div>';
			template+=templateToolbarEditor;
	        template+='                  <div id="editor-'+tempMark+'" class="editor-itinerary editor-wrapper"></div>';
	        template+='                  <input type="hidden" name="itineraries_description[]">';
	        template+='      	 		</div>';
	        template+='      	 	</div>';
	        template+='				<div style="padding: 5px;text-align: center;"><button data-target="#panel-'+tempMark+'" type="button" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
	        template+='      </div>';
	        template+='    </div>';
	        template+='  </div>';
	        $('#accordion').append(template);
	        init_wysiwyg();
    	});
    </script>
    <script>
	    var binCountAddService = 0;
		$('#btnAddService').click(function(){
			binCountAddService++;
			var tempMark = "tempMarkService" + binCountAddService;
			var template = '';
			template+='  <div id="panel-'+tempMark+'" class="panel panel-service">';
			template+='    <a class="panel-heading" role="tab" id="heading'+tempMark+'" data-toggle="collapse" data-parent="#accordion2" href="#collapse'+tempMark+'" aria-expanded="true" aria-controls="collapse'+tempMark+'">';
			template+='      <h4 class="panel-title">[New Service] #Undefined</h4>';
			template+='    </a>';
			template+='    <div id="collapse'+tempMark+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading'+tempMark+'">';
			template+='      <div class="panel-body">';
			template+='      		<div class="form-group">';
			template+='      	 		<label class="control-label">Status <span class="required">*</span></label>';
			template+='      	 		<div class="">';
			template+='                    <div class="checkbox">';
			template+='                    	<label><input type="checkbox" class="js-switch input-status-service" /><input type="hidden" name="services_status[]" /></label>';
			template+='                    </div>';
			template+='                </div>';
			template+='      	 	</div>';
			template+='      	 	<div class="form-group">';
			template+='      	 		<label class="control-label">Name <span class="required">*</span></label>';
			template+='      	 		<div>';
			template+='      	 			<input type="text" required="required" name="services_name[]" class="form-control">';
			template+='      	 		</div>';
			template+='      	 	</div>';
			template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#panel-'+tempMark+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
			template+='      </div>';
			template+='    </div>';
			template+='  </div>';
			$('#accordion2').append(template);
			if ($(".js-switch")[0]) {
	            var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
	            new Switchery(elems.pop(), {color: '#26B99A'});
	        }
		});
    </script>
    <script>
    	$(document).on('click', '.btn-delete-panel', function(){
    		var dataTarget = $(this).attr('data-target');
    		$(dataTarget).remove();
    	});
    </script>
    <script>
    	var dumpCountGalleryImageInput = 0;
    	$('.btnAddInputGallery').click(function(){
    		dumpCountGalleryImageInput += 1;
    		var tempIdInput = "GalleryImageInput"+dumpCountGalleryImageInput;
    		var tempIdInputWrap = "GalleryImageInputWrap"+dumpCountGalleryImageInput;
    		var template = "";
    		template+='<div class="row" id="'+tempIdInputWrap+'" style="margin-bottom: 10px;">';
    		template+='	<div class="col-md-8 col-sm-8 col-xs-12">';
    		template+='		<input id="'+tempIdInput+'" type="text" name="gallery[]" required="required" class="form-control">';
    		template+='    </div>';
    		template+='    <div class="col-md-4 col-sm-4 col-xs-12">';
    		template+='      <button type="button" class="btnUploadImage btn btn-success" data-input="#'+tempIdInput+'" data-toggle="modal" data-target="#modalUploadImage">Upload image</button>';
    		template+='      <button type="button" class="btnRemoveInputGallery btn btn-danger" data-target="#'+tempIdInputWrap+'">Remove</button>';
    		template+='    </div>';
    		template+='</div>';
    		$('#galleryContainer').prepend(template);
    	});
    	$(document).on('click', '.btnRemoveInputGallery', function(){
    		var dataTarget = $(this).attr('data-target');
    		$(dataTarget).remove();
    	});
    </script>
    <script>
    	var dumpCountVideosImageInput = 0;
    	$('.btnAddInputVideos').click(function(){
    		dumpCountVideosImageInput += 1;
    		var tempIdInput = "VideosImageInput"+dumpCountVideosImageInput;
    		var tempIdInputWrap = "VideosImageInputWrap"+dumpCountVideosImageInput;
    		var template = "";
    		template+='<div class="row" id="'+tempIdInputWrap+'" style="margin-bottom: 10px;">';
    		template+='	<div class="col-md-8 col-sm-8 col-xs-12">';
    		template+='		<input id="'+tempIdInput+'" type="text" name="videos[]" required="required" class="form-control">';
    		template+='    </div>';
    		template+='    <div class="col-md-4 col-sm-4 col-xs-12">';
    		template+='      <button type="button" class="btnRemoveInputVideos btn btn-danger" data-target="#'+tempIdInputWrap+'">Remove</button>';
    		template+='    </div>';
    		template+='</div>';
    		$('#videosContainer').prepend(template);
    	});
    	$(document).on('click', '.btnRemoveInputVideos', function(){
    		var dataTarget = $(this).attr('data-target');
    		$(dataTarget).remove();
    	});
    </script>
  </body>
</html>