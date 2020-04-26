@extends('plantilla.plantilla')

@section('titulo', 'Confirm la eliminacion del registro')

@section('contenido')
<div class="container py-5">
	<h1>¿Deseas eliminar el registro de {{$Agenda->nombres}} {{$Agenda->apellidos}}?</h1>

	<form method="POST" action="{{route('agenda.destroy', $Agenda->id)}}">
		@method('DELETE')
		@csrf
		<button type="submit" class="redondo btn btn-danger">
			<i class="fas fa-trash-alt"></i>Eliminar
		</button>
		<a class="redondo btn btn-secondary" href="{{route('cancelar')}}">
			<i class="fas fa-ban"></i>Cancelar
		</a>
	</form>
	
</div>

@include('plantilla.footer', ['container'=>'container'])

@endsection

