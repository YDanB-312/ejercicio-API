<?php

namespace App\Http\Controllers\Api;

use App\Models\Computer;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ComputerController extends Controller
{
    public function index()
    {
        $computers = Computer::included()->get();
        return $computers;
    }

    public function show($id)
    {
        $computer = Computer::included()->findOrFail($id);
        return $computer;
    }
}
