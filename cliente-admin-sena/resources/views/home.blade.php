@extends('layouts.app')

@section('content')
<div class="tarjeta">
    <div class="tarjeta-cuerpo" style="text-align:center; padding: 3rem;">
        <h1 style="color:#1a3a5c; margin-bottom:1rem;">Bienvenido al Sistema Admin SENA</h1>
        <p style="font-size:1.1rem; color:#666; margin-bottom:2rem;">
            Gestión de centros, instructores, fichas, aprendices y más.
        </p>
        <div style="display:flex; gap:1rem; justify-content:center; flex-wrap:wrap;">
            <a href="{{ route('areas') }}" class="btn btn-primario">Áreas</a>
            <a href="{{ route('training-centers') }}" class="btn btn-primario">Centros</a>
            <a href="{{ route('computers') }}" class="btn btn-primario">Computadores</a>
            <a href="{{ route('teachers') }}" class="btn btn-primario">Instructores</a>
            <a href="{{ route('courses') }}" class="btn btn-primario">Fichas</a>
            <a href="{{ route('course-teachers') }}" class="btn btn-primario">Asignaciones</a>
            <a href="{{ route('apprentices') }}" class="btn btn-primario">Aprendices</a>
        </div>
    </div>
</div>
@endsection
