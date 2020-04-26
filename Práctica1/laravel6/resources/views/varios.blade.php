@foreach($info as $infoitem)
	@if($infoitem->nombre == 'Javier')

		<p>{{$infoitem->nombre}}, {{$infoitem->descripcion}} este usuario es Javier</p>

	@else

		<p>{{$infoitem->nombre}}, {{$infoitem->descripcion}}</p>

	@endif

	@empty($infoitem->descripcion)

		<p>La descriipcion esta en blanco</p>

	@endempty
@endforeach