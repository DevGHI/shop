<?php

namespace App\Http\Controllers;

use App\Http\Requests\MainCategoryRequest;
use App\MainCategory;
use App\SubCategory;

class MainCategoryController extends Controller
{
    public function index()
    {
        $maincategories = MainCategory::latest()->get();

        return response(['data' => $maincategories ], 200);
        //return $maincategories[0]->subcategories;
    }

    public function store(MainCategoryRequest $request)
    {
        $maincategory = MainCategory::create($request->all());

        return response(['data' => $maincategory ], 201);

    }

    public function show($id)
    {
        $maincategory = MainCategory::findOrFail($id);
        $maincategory['subcategories']=$maincategory->subcategories;

        //return $maincategory;

        return response(['data', $maincategory ], 200);
    }

    public function update(MainCategoryRequest $request, $id)
    {
        $maincategory = MainCategory::findOrFail($id);
        $maincategory->update($request->all());

        return response(['data' => $maincategory ], 200);
    }

    public function destroy($id)
    {
        MainCategory::destroy($id);

        return response(['data' => null ], 204);
    }
}
