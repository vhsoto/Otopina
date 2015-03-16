function cargarEventos(e){
	var id = $(this).val();
	$.get("/event_categories/"+ id + "/events.json", function(data){
		$('#adverse_event_event_id').empty();
		$.each(data, function(i, v){
			$('#adverse_event_event_id').append($('<option>', { text: v.Detail, value: v.id}));
		});
	});	
}

$(document).on('ready page:load', function(){
	$('#event_category_id_event_category_id').change(cargarEventos);		
});