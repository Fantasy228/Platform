<?php

namespace App\Http\Controllers;

use App\Http\Requests\TestRequest;
use App\Models\Test;

class TestController extends Controller
{
    public function index()
    {
        $tests = Test::latest()->get()->toArray();

        return $tests;
    }

    public function store($request)
    {
        $test = Test::create($request->all());

        return $test;
    }

    public function show($id)
    {
        $test = Test::findOrFail($id)->toArray();

        return $test;
    }

    public function update($request, $id)
    {
        $test = Test::findOrFail($id);
        $test->update($request->all());

        return $test;
    }

    public function destroy($id)
    {
        Test::destroy($id);

        return null;
    }
}