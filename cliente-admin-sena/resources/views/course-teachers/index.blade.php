@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Asignaciones Ficha - Instructor</h3>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ficha</th>
                    <th>Instructor</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($assignments as $assignment)
                <tr>
                    <td>{{ $assignment['id'] }}</td>
                    <td>{{ $assignment['course']['course_number'] ?? 'N/A' }}</td>
                    <td>{{ $assignment['teacher']['name'] ?? 'N/A' }}</td>
                    <td class="acciones">
                        <a href="{{ route('course-teachers.show', $assignment['id']) }}" class="btn btn-exito btn-pequeno">Ver</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
