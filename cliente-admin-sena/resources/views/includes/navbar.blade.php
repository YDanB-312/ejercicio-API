<nav class="barra-navegacion">
    <a href="{{ route('home') }}">
        <img src="{{ asset('images/logo.png') }}" alt="Logo" class="logo">
    </a>
    <ul class="enlaces">
        <li><a href="{{ route('home') }}">Inicio</a></li>
        <li><a href="{{ route('areas') }}">Áreas</a></li>
        <li><a href="{{ route('training-centers') }}">Centros</a></li>
        <li><a href="{{ route('computers') }}">Computadores</a></li>
        <li><a href="{{ route('teachers') }}">Instructores</a></li>
        <li><a href="{{ route('courses') }}">Fichas</a></li>
        <li><a href="{{ route('course-teachers') }}">Asignaciones</a></li>
        <li><a href="{{ route('apprentices') }}">Aprendices</a></li>
    </ul>
</nav>
