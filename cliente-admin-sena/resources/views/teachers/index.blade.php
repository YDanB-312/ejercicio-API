@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Instructores</h3>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($teachers as $teacher)
                <tr>
                    <td>{{ $teacher['id'] }}</td>
                    <td>{{ $teacher['name'] }}</td>
                    <td>{{ $teacher['email'] }}</td>
                    <td class="acciones">
                        <a href="{{ route('teachers.show', $teacher['id']) }}" class="btn btn-exito btn-pequeno">Ver</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
