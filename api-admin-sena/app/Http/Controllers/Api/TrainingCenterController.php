<?php

namespace App\Http\Controllers\Api;

use App\Models\TrainingCenter;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TrainingCenterController extends Controller
{
    public function index()
    {
        $centers = TrainingCenter::included()->get();
        return $centers;
    }

    public function show($id)
    {
        $center = TrainingCenter::included()->findOrFail($id);
        return $center;
    }
}
