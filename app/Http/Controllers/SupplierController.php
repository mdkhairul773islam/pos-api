<?php
namespace App\Http\Controllers;

use App\Models\Party;
use Illuminate\Http\Request;
use DB;

class SupplierController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
        
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $data = Party::where('party_type', 'supplier')->select(['id', 'address', 'contact_person', 'name', 'mobile', 'initial_balance'])
            ->orderBy("id", "desc")
            ->paginate($request->per_page);
        return response()
            ->json($data, 200);
    }

    /**
     * Display a showroom wise supplier list of the resource.
     */
    public function showroomWiseSupplier($showroom_id)
    {
        if (!empty($showroom_id))
        {
            $data = Party::where('party_type', 'supplier')->where('showroom_id', $showroom_id)->select([DB::raw("CONCAT(name,' - ',mobile) AS label") , 'id as value', 'showroom_id', 'address', 'name', 'mobile', 'initial_balance'])
                ->orderBy("id", "desc")
                ->get();
            return response()
                ->json($data, 200);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = new Party;

        $data->created = date('Y-m-d');
        $data->name = $request->name;
        $data->contact_person = $request->contact_person;
        $data->mobile = $request->mobile;
        $data->party_type = 'supplier';
        $data->address = $request->address;
        $data->remarks = $request->remarks;
        $data->initial_balance = ($request->balance_status == 'payable' ? '-' : '') . $request->initial_balance;

        $data->save();

        $data = ['success' => 'Supplier successfully added.'];

        return response()->json($data, 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $data['asideMenu'] = 'supplier';
        $data['asideSubmenu'] = 'allSupplier';

        $data = Party::find($id);

        return response()->json($data, 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = Party::select(['id', 'name', 'address', 'contact_person', 'remarks', 'mobile', 'initial_balance', Party::raw('ABS(initial_balance) as opening_balance') ])->find($id);

        return response()->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {

        $data = Party::find($request->id);

        $data->name = $request->name;
        $data->contact_person = $request->contact_person;
        $data->mobile = $request->mobile;
        $data->party_type = 'supplier';
        $data->address = $request->address;
        $data->remarks = $request->remarks;

        if ($request->initial_balance < 0 && $request->balance_status == 'payable')
        {
            $data->initial_balance = $request->initial_balance;
        }
        else
        {
            $data->initial_balance = ($request->balance_status == 'payable' ? '-' : '') . abs($request->initial_balance);
        }

        $data->save();

        $data = ['success' => 'Supplier successfully updated.'];

        return response()->json($data, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        if (Party::find($id)->delete())
        {
            $data = Party::select("*")->orderBy("id", "desc")
                ->get();
        }
        else
        {
            $data = ['warning' => 'Supplier successfully not deleted.'];
        }
        return response()->json($data, 200);

    }
}