<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- jQuery -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/moment/min/moment.min.js"></script>
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
   	<!-- Datatables -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <!-- Dropzone.js -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/dropzone/dist/min/dropzone.min.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- iCheck -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/iCheck/icheck.min.js"></script>
    <!-- Switchery -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/switchery/dist/switchery.min.js"></script>
    <!-- jQuery Tags Input -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    
    <!-- Jquery Notify -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/js/notify.min.js"></script>
    
    <!-- ckeditor -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/js/ckeditor/ckeditor.js"></script>
    
    <!-- Parsley -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/vendors/parsleyjs/dist/parsley.min.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="<%= request.getAttribute("sitePath") %>/public/be/build/js/custom.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    
    <script>
    	$('.btnLogout').click(function(){
    		$('#formLogout').submit();
    	});
    	
    </script>