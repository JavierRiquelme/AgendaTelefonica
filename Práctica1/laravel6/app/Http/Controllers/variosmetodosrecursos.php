<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\info;

class variosmetodosrecursos extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /*return 'Este es el index.';
        return redirect()->action('holaController');
        return redirect()->action('UsuarioController@usuariounparametro', ['nombre'=>'Javier Riquelme']);
        return redirect('hola');*/

        //$info=info::all();
        //dd($info);
        //return view('varios')->with('info', $info);
        //return view('varios')->with(['info' => $info]);
        //return view('varios', ['info' => $info]);
        /*$info=info::where('descripcion', '=', 'Gerente TI')->get();
        return view('varios', compact('info'));*/

        return view('varios.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        /*$info=new info;
        $info->nombre='Javier Riquelme';
        $info->descripcion='Gerente TI';
        $info->save();

        info::create([
            'nombre'=>'Javier',
            'descripcion'=>'Auditor'
        ]);

        return 'Datos guardados correctamente';*/   

        return view('varios.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        /*$info=info::findOrFail($id);
        $info->delete();
        return 'El registro '.$id.' ha sido eliminado.';*/

        return view('varios.show', compact('id'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        /*$info=info::findOrFail($id);
        //$info=info::where('id', $id)->firstOrFail();
        //dd($info);
        $info=info::findOrFail($id);
        $info->nombre='jariquelme';
        $info->descripcion='jariquelme';
        $info->save();
        return 'Datos actualizados';*/
        
        return view('varios.edit', compact('id'));
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
