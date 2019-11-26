<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categories;

class HomeController extends Controller
{
    function home()
    {
        $Content = Categories::orderBy('id','DESC')->get();
        return view('index', ['Content' => $Content]);
    }
    public function Add(Request $request,$id = null){
        $Category = Categories::get();
        if ($id == '') {
            if ($request->isMethod('post')) {

                $cat = Categories::create([
                    'type'              => $request->post('type'),
                    'link'      	    => $request->post('link'),
                    'description'       => $request->post('description'),
                    'example'           => $request->post('example'),
                    'spec'              => json_encode($request->post('bx')),
                ]);
                return redirect('Edited/'.$cat['id'])->with('messages', __('GTF.Successfully_Added'));
            }
            return view('Category_Add', ['category' => $Category]);
        }else{
            $Edit = Categories::where('id',$id)->first();
            if ($request->isMethod('post')) {
                Categories::where('id',$id)->update([
                    'type'              => $request->post('type'),
                    'link'      	    => $request->post('link'),
                    'description'       => $request->post('description'),
                    'example'           => $request->post('example'),
                    'spec'              => json_encode($request->post('bx')),
                ]);
                return redirect('Edited/'.$id)->with('messages', __('GTF.Successfully_Edited'));
            }
            return view('Category_Add', ['category' => $Category,'Edit' => $Edit]);
        }
    }
    public function List($pid = null){


        $Content = Categories::orderBy('id','DESC')->get();
        return view('Category_List', ['Content' => $Content]);
    }
    public function Del($id){
        if($id != ''){
            Categories::where('id', $id)->delete();
            return redirect('List')->with( 'messages' , __('GTF.Successfully_Deleted') );
        }else{
            return redirect('List')->with( 'messagee' , __('GTF.Try_Again') );
        }
    }
}
