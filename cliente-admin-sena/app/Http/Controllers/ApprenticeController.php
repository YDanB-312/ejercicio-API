<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;

class ApprenticeController extends Controller
{
    private function fetchDataFromApi($url)
    {
        $response = Http::get($url);
        return $response->json();
    }

    public function index()
    {
        $url = env('URL_SERVER_API');
        $apprentices = $this->fetchDataFromApi($url . '/apprentices?included=course,computer');
        return view('apprentices.index', compact('apprentices'));
    }

    public function show($id)
    {
        $url = env('URL_SERVER_API');
        $apprentice = $this->fetchDataFromApi($url . '/apprentices/' . $id . '?included=course,computer');
        return view('apprentices.show', compact('apprentice'));
    }
}
