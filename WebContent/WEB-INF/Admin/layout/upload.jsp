<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <button data-input="" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage">Large modal</button> -->
<div id="modalUploadImage" data-input="" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        <form id="myDropZone" action="https://api.imgur.com/3/image" class="dropzone"></form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>

    </div>
  </div>
</div>
<script>
	$("#myDropZone").dropzone({
		url: "https://api.imgur.com/3/image",
		method: "post",
		headers: {
			"Cache-Control": null,
	           "X-Requested-With": null,
	           "Authorization": "Client-ID ead445955d79eca"
		},
		paramName: "image",
		acceptedFiles: "image/*",
		mimeType: 'multipart/form-data',
		parallelUploads: 1,
		success: function(file, response){
			var dataInput = $('#modalUploadImage').attr('data-input');
			$(dataInput).val(response.data.link);
			$('#modalUploadImage').modal('toggle');
		}
	});
	$(document).on('click','.btnUploadImage',function(){
	    var dataInput = $(this).attr('data-input');
	    $('#modalUploadImage').attr('data-input', dataInput);
	});
</script>