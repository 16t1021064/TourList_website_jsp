<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <button data-input="" type="button" class="btnCKEditor btn btn-primary" data-toggle="modal" data-target="#modalCKEditor">Large modal</button> -->
<div id="modalCKEditor" data-input="" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
       	<div id="ckeditorPanel">
       		
       	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button id="btnSaveEditor" type="button" class="btn btn-primary">Save</button>
      </div>

    </div>
  </div>
</div>

<script>
	$(function(){

		CKEDITOR.replace('ckeditorPanel');
		
		$(".btnCKEditor").click(function(){
			CKEDITOR.instances['ckeditorPanel'].setData($($(this).data("input")).val());
			$('#modalCKEditor').data("input", $(this).data("input"));
		});
		$('body').on('click', '.pageCkeditorInputPanel', function(){
			CKEDITOR.instances['ckeditorPanel'].setData($($(this).data("input")).val());
			$('#modalCKEditor').data("input", $(this).data("input"));
			$('#modalCKEditor').modal("toggle");
		});
		
		$('#modalCKEditor').on('hidden.bs.modal', function (e) {
			$($(this).data("input")).val(CKEDITOR.instances['ckeditorPanel'].getData());
		});
		
		
	});
</script>
<style>
	.pageCkeditorInputPanel{
		cursor: pointer;
	}
</style>