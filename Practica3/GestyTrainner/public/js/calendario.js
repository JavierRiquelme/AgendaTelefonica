	//Uso de fullcalendar
	document.addEventListener('DOMContentLoaded', function() {
	        var calendarEl = document.getElementById('calendar');

	        var calendar = new FullCalendar.Calendar(calendarEl, {
	          plugins: [ 'dayGrid', 'list', 'timeGrid', 'interaction' ],

	          header: {
	          	left:'prev,next, today',
	          	center:'title',
	          	right:'dayGridMonth, timeGridWeek, timeGridDay'
	          },
	          dateClick:function(info){

	          	limpiarFormulario();

	          	//deshabilitar botones Modificar y Eliminar del modal
	          	$('#btnCrear').prop('disabled',false);
	          	$('#btnModificar').prop('disabled',true);
	          	$('#btnEliminar').prop('disabled',true);

	          	//añadir modal al calendario
	          	$('#modalClase').modal();

	          	//poner fecha en el formulario
	          	$('#txtFecha').val(info.dateStr);

	          },
	          eventClick:function(info){

	          	//deshabilitar botón Crear del modal
	          	$('#btnCrear').prop('disabled',true);
	          	$('#btnModificar').prop('disabled',false);
	          	$('#btnEliminar').prop('disabled',false);
	          	
	          	//creo formato de fecha
	          	dia = (info.event.start.getDate());
	          	mes = (info.event.start.getMonth()+1);
	          	anyo = (info.event.start.getFullYear());

	          	//pongo un 0 delante en el dia y mes para formato mysql
	          	dia = (dia<10)?'0'+dia:dia;
	          	mes = (mes<10)?'0'+mes:mes;

	          	//creo formato hora
	          	minutos = info.event.start.getMinutes();
	          	hora = info.event.start.getHours();

	          	//pongo un 0 delante de los minutos y la hora para formato mysql
	          	minutos = (minutos<10)?'0'+minutos:minutos;
	          	hora = (hora<10)?'0'+hora:hora;

	          	//mostrar datos de la clase en el modal
	          	$('#txtId').val(info.event.id);
	          	$('#txtHora').val(hora+':'+minutos);
	          	$('#txtTitulo').val(info.event.title);
	          	$('#txtDescripcion').val(info.event.extendedProps.descripcion);
	          	$('#txtFecha').val(dia+'-'+mes+'-'+anyo);
	          	$('#txtColor').val(info.event.backgroundColor);
	          	$('#modalClase').modal();
	          },
	          events:url_show
	        });

	        calendar.setOption('locale','es');

	        calendar.render();

	        //añadir evento click al botón Crear
	        $('#btnCrear').click(function(){
	        	objClase = recogerDatosClase('POST');
	        	enviarDatosClase('', objClase);
	        });

	        //añadir evento click al botón Eliminar
	        $('#btnEliminar').click(function(){
	        	objClase = recogerDatosClase('DELETE');
	        	enviarDatosClase('/'+$('#txtId').val(), objClase);
	        });

	       	//añadir evento click al botón Modificar
	        $('#btnModificar').click(function(){
	        	objClase = recogerDatosClase('PATCH');
	        	enviarDatosClase('/'+$('#txtId').val(), objClase);
	        });

	        //recoger datos del formuario modalClase
	        function recogerDatosClase(method){

	        	nuevaClase={
	        		id:$('#txtId').val(),
	        		title:$('#txtTitulo').val(),
	        		descripcion:$('#txtDescripcion').val(),
	        		color:$('#txtColor').val(),
	        		textcolor:'#000000',
	        		start:$('#txtFecha').val()+' '+$('#txtHora').val(),
	        		end:$('#txtFecha').val()+' '+$('#txtHora').val(),

	        		'_token':$("meta[name='csrf-token']").attr('content'),
	        		'_method':method
	        	}
	        	return nuevaClase;
	        }

	        //enviar datos a la función store de ClaseController
	        function enviarDatosClase(accion, objClase){

	        	$.ajax({
	        		type:'POST',
	        		url:url_+accion,
	        		data:objClase,
	        		success:function(msg){

	        			//actualiza el calendario cuando inserto información
	        			$('#modalClase').modal('toggle');
	        			calendar.refetchEvents();
	        		},
	        		error:function(){alert("Hay un error");}
	        	});
	        }

	    function limpiarFormulario(){

	        $('#txtId').val('');
	        $('#txtHora').val('');
	        $('#txtTitulo').val('');
	        $('#txtDescripcion').val('');
	        $('#txtFecha').val('');
	        $('#txtColor').val('');	
	    }
	    });