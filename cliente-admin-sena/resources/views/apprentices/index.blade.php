@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Aprendices</h3>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Celular</th>
                    <th>Ficha</th>
                    <th>Computador</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($apprentices as $apprentice)
                <tr>
                    <td>{{ $apprentice['id'] }}</td>
                    <td>{{ $apprentice['name'] }}</td>
                    <td>{{ $apprentice['email'] }}</td>
                    <td>{{ $apprentice['cell_number'] }}</td>
                    <td>{{ $apprentice['course']['course_number'] ?? 'N/A' }}</td>
                    <td>{{ $apprentice['computer']['number'] ?? 'N/A' }} - {{ $apprentice['computer']['brand'] ?? '' }}</td>
                    <td class="acciones">
                        <a href="{{ route('apprentices.show', $apprentice['id']) }}" class="btn btn-exito btn-pequeno">Ver</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
