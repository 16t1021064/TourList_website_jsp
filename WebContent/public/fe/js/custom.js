
jQuery(function($){
	$('.custom-pagination').each(function(){
		var totalPage = parseInt($(this).attr("data-total-page"));
		var currentPage = parseInt($(this).attr("data-current-page"));
		var pathDefault = $(this).attr("data-path-default");
		
		console.log(totalPage);
		
		var template = "";
		template += '<div class="gdlr-core-pagination  gdlr-core-style-circle gdlr-core-left-align tourmaster-item-pdlr">';
		
		for(var i = 1; i <= totalPage; i=i+1){
			if(i == currentPage){
				template += '<span aria-current="page" class="page-numbers current">'+currentPage+'</span>';
			}else{
				if(i == 1){
					template += '<a class="page-numbers" href="'+pathDefault+'&page='+i+'">'+i+'</a>';
				}else if(i == totalPage){
					template += '<a class="page-numbers" href="'+pathDefault+'&page='+i+'">'+i+'</a>';
				}else if(i == currentPage - 1){
					template += '<a class="prev page-numbers" href="'+pathDefault+'&page='+i+'"></a>';
				}else if(i == currentPage + 1){
					template += '<a class="next page-numbers" href="'+pathDefault+'&page='+i+'"></a>';
				}
			}
		}
		
		
		template += '</div>';
		$(this).html(template);
	});	
});
