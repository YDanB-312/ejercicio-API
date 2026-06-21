@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Detalle del Computador</h3>
        <a href="{{ route('computers') }}" class="btn btn-secundario">Volver</a>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr><th>ID</th><th>Número</th><th>Marca</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $computer['id'] }}</td>
                    <td>{{ $computer['number'] }}</td>
                    <td>{{ $computer['brand'] }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
