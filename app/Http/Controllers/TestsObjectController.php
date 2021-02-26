<?php

namespace App\Http\Controllers;

use App\Http\Requests\TestsObjectRequest;
use App\Models\TestsObject;

class TestsObjectController extends Controller
{
    public function index()
    {
        $testsobjects = TestsObject::latest()->get()->toArray();

        return $testsobjects;
    }

    public function store($request)
    {
        $testsobject = TestsObject::create($request->all());

        return $testsobject;
    }

    public function show($id)
    {
        $testsobject = TestsObject::findOrFail($id)->toArray();

        return $testsobject;
    }

    public function update($request, $id)
    {
        $testsobject = TestsObject::findOrFail($id);
        $testsobject->update($request->all());

        return $testsobject;
    }

    public function destroy($id)
    {
        TestsObject::destroy($id);

        return null;
    }
}