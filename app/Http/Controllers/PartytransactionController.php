<?php

namespace App\Http\Controllers;

use App\Models\Partytransaction;
use App\Models\Party;
use App\Models\Warehouse;
use Illuminate\Http\Request;

class PartytransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data =
            Partytransaction::addSelect(['name' => Party::select('name')
            ->whereColumn('code', 'partytransactions.party_code')])
            ->addSelect(['warehouse_name' => Warehouse::select('name')
            ->whereColumn('id', 'partytransactions.warehouse_id')])
            ->orderBy("id", "desc")
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
        $data = new Partytransaction;

        $data->transaction_at = $request->date;
        $data->paid_by = $request->paid_by;
        $data->remark = $request->remark;
        $data->party_code = $request->party_code;
        $data->transaction_method = $request->transaction_method;
        $data->warehouse_id = $request->warehouse_id;

        // generate transaction invoice
        $invoice = rand(100000, 999999);
        while (Partytransaction::where('relation', $invoice)->first())
        {
            $invoice = rand(100000, 999999);
        }
        $data->relation = $invoice;
        
        if($request->balance_status== 'Payable'){
            if($request->transaction_type == 'receive'){
                $data['credit'] = $request->payment;
                $data['debit'] = 0;
            }else{
                $data['debit'] = $request->payment;
                $data['credit'] = 0;
            }
        }else{
            if($request->transaction_type == 'receive'){
                $data['debit'] = 0;
                $data['credit'] = $request->payment;
            }else{
                $data['credit'] = 0;
                $data['debit'] = $request->payment;
            }
        }

        $data->status           = "transaction";
        $data->transaction_by   = "suplier";

        $data->save();

        $data = ['success' => 'Party Transaction successfully added.'];
        
        return response()
        ->json($data, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Partytransaction  $partytransaction
     * @return \Illuminate\Http\Response
     */
    public function show($partytransaction)
    {
        return "show";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Partytransaction  $partytransaction
     * @return \Illuminate\Http\Response
     */
    public function edit($partytransaction)
    {
        return "edit";
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Partytransaction  $partytransaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        return "update";
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Partytransaction  $partytransaction
     * @return \Illuminate\Http\Response
     */
    public function destroy($partytransaction)
    {
        return "destriy";
    }
}
