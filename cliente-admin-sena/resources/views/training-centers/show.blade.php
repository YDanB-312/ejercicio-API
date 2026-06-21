@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Detalle del Centro</h3>
        <a href="{{ route('training-centers') }}" class="btn btn-secundario">Volver</a>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr><th>ID</th><th>Nombre</th><th>Ubicación</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $center['id'] }}</td>
                    <td>{{ $center['name'] }}</td>
                    <td>{{ $center['location'] }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
