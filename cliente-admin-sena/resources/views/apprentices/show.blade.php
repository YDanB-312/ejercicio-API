@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Detalle del Aprendiz</h3>
        <a href="{{ route('apprentices') }}" class="btn btn-secundario">Volver</a>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr><th>ID</th><th>Nombre</th><th>Email</th><th>Celular</th><th>Ficha</th><th>Computador</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $apprentice['id'] }}</td>
                    <td>{{ $apprentice['name'] }}</td>
                    <td>{{ $apprentice['email'] }}</td>
                    <td>{{ $apprentice['cell_number'] }}</td>
                    <td>{{ $apprentice['course']['course_number'] ?? 'N/A' }}</td>
                    <td>{{ $apprentice['computer']['number'] ?? 'N/A' }} - {{ $apprentice['computer']['brand'] ?? '' }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
