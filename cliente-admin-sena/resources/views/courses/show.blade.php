@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Detalle de la Ficha</h3>
        <a href="{{ route('courses') }}" class="btn btn-secundario">Volver</a>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr><th>ID</th><th>Número</th><th>Jornada</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $course['id'] }}</td>
                    <td>{{ $course['course_number'] }}</td>
                    <td>{{ $course['day'] }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
