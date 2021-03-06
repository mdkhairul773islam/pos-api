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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function warehouseList()
    {   
        $data = Warehouse::select("id as value", "name as label", "mobile")->orderBy("id", "desc")
        ->get();

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
    public function edit($warehouse)
    {
        $data = Warehouse::find($warehouse);
        return response()
            ->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Warehouse  $warehouse
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'mobile'    => 'required',
            'address'   => 'required',
        ]);

        if ($validator->fails()) {
            $data = ['validator' =>'Warehouse validator error.', 'message' => $validator->errors()];
            return response()->json($data, 200);

            }else{

                $data                   = Warehouse::find($request->id);

                $data->name             = $request->name;;
                $data->manager_name     = $request->manager_name;
                $data->mobile           = $request->mobile;
                $data->address          = $request->address;

                $data->save();

                $data->save() ? $data = ['success'=>'Warehouse Successfully updated.'] : $data = ['warning'=>'Warehouse update somthing went wrong.'];

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
            $warehouse = Warehouse::select("*")->orderBy("id", "desc")
                ->get(10);
            $data = ['success' => 'Warehouse Successfully Deleted.', 'data'=>$warehouse];
        }
        else
        {
            $data = ['warning' => 'Warehouse successfully not deleted.'];
        }
        return response()->json($data, 200);
    }
}