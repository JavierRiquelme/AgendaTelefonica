<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Mi primera vista</title>
</head>
<body>
	<h1>Mundo Laravel - {!!"Hola Mundo $nombre $apellido"!!}</h1>
	<ul>
		@isset($posts2)
			isset
		@endisset

		@empty($posts2)
		@endempty
			vacio
		@forelse($posts as $post)
		<?php //dd($loop) ?>
			<li>
				@if($loop->first)
					Primero:
				@elseif($loop->last)
					Último:
				@else
					Medio:
				@endif
				{{$post}}
			</li> 
		@empty
			<li>Vacio</li>
		@endforelse
	</ul>
</body>
</html>