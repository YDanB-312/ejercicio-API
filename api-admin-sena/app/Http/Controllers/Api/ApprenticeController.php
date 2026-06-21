<?php

namespace App\Http\Controllers\Api;

use App\Models\Apprentice;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ApprenticeController extends Controller
{
    public function index()
    {
        $apprentices = Apprentice::included()->get();
        return $apprentices;
    }

    public function show($id)
    {
        $apprentice = Apprentice::included()->findOrFail($id);
        return $apprentice;
    }
}
