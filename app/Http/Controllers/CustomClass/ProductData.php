<?php


namespace App\Http\Controllers\CustomClass;


use App\Product;

class ProductData
{
    public function detail($id){
        $data=Product::findOrFail($id);
        foreach ($data->photo as $item){
            $item['photo_url']=Helper::$domain.'upload/product/'.$item->photo;
        }
        $data['photo']=$data->photo;
        return $data;
    }

    public function format($arr){
        $temp_arr=[];
        foreach ($arr as $data){
            $detail=$this->detail($data->id);
            array_push($temp_arr,$detail);
        }
        return $temp_arr;
    }

}
