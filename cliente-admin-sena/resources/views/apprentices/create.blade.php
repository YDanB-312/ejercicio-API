@extends('layouts.app')

@section('content')
    <div class="tarjeta">
        <div class="tarjeta-encabezado">
            <h3>Nuevo Aprendiz</h3>
        </div>
        <div class="tarjeta-cuerpo">
            <form action="{{ route('apprentices.store') }}" method="POST">
                @csrf
                <div class="grupo-formulario">
                    <label for="name">Nombre</label>
                    <input type="text" name="name" id="name" class="control-formulario" required>
                </div>
                <div class="grupo-formulario">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" class="control-formulario" required>
                </div>
                <div class="grupo-formulario">
                    <label for="cell_number">Celular</label>
                    <input type="text" name="cell_number" id="cell_number" class="control-formulario" required>
                </div>
                <div class="grupo-formulario">
                    <label for="course_id">Ficha</label>
                    <select name="course_id" id="course_id" class="control-formulario" required>
                        <option value="">Seleccione una ficha</option>
                        @foreach ($courses as $course)
                            <option value="{{ $course['id'] }}">{{ $course['course_number'] }} - {{ $course['day'] }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="grupo-formulario">
                    <label for="computer_id">Computador</label>
                    <select name="computer_id" id="computer_id" class="control-formulario" required>
                        <option value="">Seleccione un computador</option>
                        @foreach ($computers as $computer)
                            <option value="{{ $computer['id'] }}">{{ $computer['number'] }} - {{ $computer['brand'] }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="formulario-acciones">
                    <button type="submit" class="btn btn-primario">Guardar</button>
                    <a href="{{ route('apprentices.index') }}" class="btn btn-secundario">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
@endsection
