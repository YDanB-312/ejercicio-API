@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-encabezado">
        <h3>Centros de Formación</h3>
    </div>
    <div class="tarjeta-cuerpo">
        <table class="tabla">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Ubicación</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($centers as $center)
                <tr>
                    <td>{{ $center['id'] }}</td>
                    <td>{{ $center['name'] }}</td>
                    <td>{{ $center['location'] }}</td>
                    <td class="acciones">
                        <a href="{{ route('training-centers.show', $center['id']) }}" class="btn btn-exito btn-pequeno">Ver</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
