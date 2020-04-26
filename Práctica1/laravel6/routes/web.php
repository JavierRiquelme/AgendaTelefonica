<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



/*Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('hola', 'holaController');

Route::get('usuario/{nombre?}', 'UsuarioController@usuariounparametro')->name('usuarionombre');

Route::get('usuario/{nombre}/comentario/{comentarioid}', 'UsuarioController@usuariodosparametros');

Route::get('user/{nombre}', 'usuario\UserController@user')->where('nombre', '[A-Za-z]+');

Route::get('user1/{id}', 'usuario\UserController@user1')->where('id', '[0-9]+');

Route::get('user2/{id}/{nombre}', 'usuario\UserController@user2')->where(['id'=>'[0-9]+',
		   																  'nombre'=>'[A-Za-z]+']);

Route::get('prueba', function(){
	return 'Página de prueba';
})->name('pruebaroute');

Route::get('redirgirprueba', function(){
	return redirect()->route('pruebaroute');
});

Route::get('redirgirprueba1', function(){
	return redirect()->route('usuarionombre', ['nombre'=>'Javier']);
});

Route::redirect('/prueba3', '/prueba');

Route::resource('varios', 'variosmetodosrecursos');

Route::resource('varios1', 'variosmetodosrecursos')->only(['index','show']);

Route::resource('varios2', 'variosmetodosrecursos')->except(['create','store','update','destroy']);

Route::resource('varios3', 'variosmetodosrecursos')->only(['index','show'])->names([
	'index'=>'varios.inicio'
]);*/

Route::resource('varios', 'variosmetodosrecursos');