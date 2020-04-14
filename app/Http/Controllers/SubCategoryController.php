<?php

namespace App\Http\Controllers;

use App\Http\Requests\SubCategoryRequest;
use App\SubCategory;
use App\Product;
//use App\ProductPhoto;

class SubCategoryController extends Controller
{
    public function index()
    {
        $subcategories = SubCategory::latest()->get();

        return response(['data' => $subcategories ], 200);
    }

    public function store(SubCategoryRequest $request)
    {
        $subcategory = SubCategory::create($request->all());

        return response(['data' => $subcategory ], 201);

    }

    public function show($id)
    {
        $subcategory = SubCategory::findOrFail($id);
        //$photo=ProductPhoto::findOrFail('product_id');
        $subcategory['product']=$subcategory->product;
        //$photo['photo']=$photo->photo;

        return response(['data', $subcategory ], 200);
    }

    public function update(SubCategoryRequest $request, $id)
    {
        $subcategory = SubCategory::findOrFail($id);
        $subcategory->update($request->all());

        return response(['data' => $subcategory ], 200);
    }

    public function destroy($id)
    {
        SubCategory::destroy($id);

        return response(['data' => null ], 204);
    }
}
