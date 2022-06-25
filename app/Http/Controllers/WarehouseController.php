<?php

namespace App\Http\Controllers;

use App\Models\Warehouse;
use Illuminate\Http\Request;
use Validator; 

class WarehouseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {   
        $data = Warehouse::select("*")->orderBy("id", "desc")
        ->paginate($request->per_page);

        return response()
        ->json($data, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'mobile'    => 'required|unique:warehouses',
            'address'   => 'required',
        ]);
        
        if ($validator->fails()) {
            $data = ['validator' =>'Warehouse validator error.', 'message' => $validator->errors()];
            return response()->json($data, 200);
            
            }else{
                
                $data                   = new Warehouse;
                $warehouse              = (!empty($request->prefix) ? $request->prefix.'-'.trim($request->name) : $request->name);
                $data->name             = $warehouse;
                $data->manager_name     = $request->manager_name;
                $data->mobile           = $request->mobile;
                $data->address          = $request->address;

                $data->save() ? $data = ['success'=>'Warehouse Successfully add.'] : $data = ['warning'=>'Warehouse add somthing went wrong.'];
                
            return response()
            ->json($data, 200);
        } 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function show(Warehouse $warehouse)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function edit(Warehouse $warehouse)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $warehouse)
    {
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'address'   => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 404);
            }else{

                $data                   = Warehouse::find($warehouse);

                $warehouse              = (!empty($request->prefix) ? $request->prefix.'-'.trim($request->name) : $request->name);
                $data->name             = $warehouse;
                $data->manager_name     = $request->manager_name;
                $data->mobile           = $request->mobile;
                $data->address          = $request->address;

                $data->save();

                $data = ['success' => 'Warehouse successfully updated.'];

            return response()
            ->json($data, 200);
        } 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function destroy($warehouse)
    {
        if (Warehouse::find($warehouse)->delete())
        {
            $data = Warehouse::select("*")->orderBy("id", "desc")
                ->get(10);
        }
        else
        {
            $data = ['warning' => 'Supplier successfully not deleted.'];
        }
        return response()->json($data, 200);
    }
}