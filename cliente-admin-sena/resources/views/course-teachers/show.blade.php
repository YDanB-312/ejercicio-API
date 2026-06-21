@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Detalle de la Asignación</h3>
        <a href="{{ route('course-teachers') }}" class="btn btn-secundario">Volver</a>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr><th>ID</th><th>Ficha</th><th>Instructor</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $assignment['id'] }}</td>
                    <td>{{ $assignment['course']['course_number'] ?? 'N/A' }}</td>
                    <td>{{ $assignment['teacher']['name'] ?? 'N/A' }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
