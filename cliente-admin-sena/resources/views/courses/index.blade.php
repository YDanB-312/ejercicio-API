@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Fichas</h3>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Número</th>
                    <th>Jornada</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($courses as $course)
                <tr>
                    <td>{{ $course['id'] }}</td>
                    <td>{{ $course['course_number'] }}</td>
                    <td>{{ $course['day'] }}</td>
                    <td class="acciones">
                        <a href="{{ route('courses.show', $course['id']) }}" class="btn btn-exito btn-pequeno">Ver</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
