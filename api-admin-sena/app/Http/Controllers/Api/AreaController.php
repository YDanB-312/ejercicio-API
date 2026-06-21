<?php

namespace App\Http\Controllers\Api;

use App\Models\Area;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AreaController extends Controller
{
    public function index()
    {
        $areas = Area::included()->get();
        return $areas;
    }

    public function show($id)
    {
        $area = Area::included()->findOrFail($id);
        return $area;
    }
}
