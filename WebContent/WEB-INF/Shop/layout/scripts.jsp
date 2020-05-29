    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/jquery/jquery.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/jquery/ui/core.min.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/jquery/ui/datepicker.min.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/jquery/ui/effect.min.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/plugins/tourmaster/tourmaster.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/plugins.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/plugins/goodlayers-core/plugins/combine/script.js'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/jquery-notify.js'></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
    

    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/plugins/goodlayers-core/include/js/page-builder.js'></script>
    
    <script>
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "Letters only please");
		jQuery.validator.addMethod("numbersonly", function(value, element) {
			return this.optional(element) || /^[0-9]+$/i.test(value);
		}, "Numbers only please");
	</script>
    
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/js/custom.js'></script>