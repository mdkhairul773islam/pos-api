<?php
use App\Models\Party;
use App\Models\Partytransaction;

if (!function_exists('uploadFile')) {
    function uploadFile($photo = '', $path = '')
    {
        if (!empty($photo) && !empty($path)) {

            $extension = $photo->getClientOriginalExtension();

            $name = $photo->getClientOriginalName();

            //$filename = floor(microtime(true)) . '.' . $extension;
            $filename = $name;

            if (!is_dir($path)) mkdir($path, 0700, true);

            $photo->move($path, $filename);

            return $path . '/' . $filename;
        }
        return '';
    }
}

if (!function_exists('capchaCode')){
    function capchaCode(){
        $digits = 4;
        return str_pad(rand(0, pow(10, $digits)-1), $digits, '0', STR_PAD_LEFT);
    }
}

// Base64 Format Faile Uploading Method..
if(!function_exists('base64FormatingFileUplaod')){
    // file: $request->photo //your base64 encoded data and $uplode_path public folder inside any folder name
    function base64FormatingFileUplaod($file ='', $upload_path =''){

        $file_64 = $file;  //your base64 encoded data
        $extension = explode('/', explode(':', substr($file_64, 0, strpos($file_64, ';')))[1])[1];   // .jpg .png .pdf
        $replace = substr($file_64, 0, strpos($file_64, ',')+1);
        // find substring fro replace here eg: data:file/png;base64,
        $file = str_replace($replace, '', $file_64);
        $file = str_replace(' ', '+', $file);
        $file_name = Str::random(10).'.'.$extension;
        $file_name_path = 'public/'.$upload_path.$file_name;

        //Storage::disk('public')->put($file_name, base64_decode($file));
        file_put_contents($file_name_path, base64_decode($file));

        return $file_name_path;
    }
}

// get get_supplier_balance 
if (!function_exists('getSupplierBalance')) {
    function getSupplierBalance($code=null, $id=null)
    {
        $data  = [];
        $where = [];
        if(!empty($code)){
            // define default amount
            $initital_balance = $debit = $credit = $balance = 0;
            // get supplier info
            $supplier_info = Party::with('partytransaction')->where('code','=', $code)->first();
            if(!empty($id)){
                $partytransaction = Partytransaction::where([['id', '<', $id], ['party_code', '=', $code]])->get();
                
                /* You can also use like this */
                /* $results = User::orderBy('id','DESC');
                $results = $results->where('column1','=', $value1);
                $results = $results->where('column2','<',  $value2);
                $results = $results->where('column3','>',  $value3);
                $results = $results->get(); */

                foreach($partytransaction as $row){
                    $credit     += $row->credit;
                    $debit      += $row->debit;
                }
            }else{
                if(!empty($supplier_info->partytransaction)){
                    foreach($supplier_info->partytransaction as $row){
                        $credit     += $row->credit;
                        $debit      += $row->debit;
                    }
                }
            } 

            $initital_balance = (!empty($supplier_info->initial_balance) ? $supplier_info->initial_balance : 0);
            $credit           = $credit;
            $debit            = $debit;
            
            // get balance
            if ($initital_balance < 0) {
                $balance = $debit - (abs($initital_balance) + $credit);
            } else {
                $balance = ($initital_balance + $debit) - $credit;
            }

            $balance = number_format($balance, 2,".","");

            $data['code']            = $supplier_info->code;
            $data['name']            = $supplier_info->name;
            $data['initial_balance'] = $initital_balance;
            $data['credit']          = $credit;
            $data['debit']           = $debit;
            $data['balance']         = abs($balance);
            $data['real_balance']    = $balance;
            $data['status']          = ($balance <= 0 ? "Payable" : "Receivable");

        }else {
            $data['code']            = '';
            $data['name']            = '';
            $data['initial_balance'] = 0;
            $data['debit']           = 0;
            $data['credit']          = 0;
            $data['balance']         = 0;
            $data['real_balance']    = 0;
            $data['status']          = "Receivable";
        }

        return $data;
    }
}

// get get_client_balance
if (!function_exists('getClientBalance')) {
    function getClientBalance($code = null)
    {
        $data = [];
        if(!empty($code)){
            // define default amount
            $initital_balance = $debit = $credit = $balance = 0;
            // get supplier info 
            $supplier_info = Party::with('Partytransaction')->where("code", $code)->first();
            if(!empty($supplier_info->partytransaction)){
                foreach($supplier_info->partytransaction as $row){
                    $credit     += $row->credit;
                    $debit      += $row->debit;
                }
            } 

            $initital_balance = (!empty($supplier_info->initial_balance) ? $supplier_info->initial_balance : 0);
            $credit           = $credit + $remission;
            $debit            = $debit;
            
            // get balance
            if ($initital_balance < 0) {
                $balance = $debit - (abs($initital_balance) + $credit);
            } else {
                $balance = ($initital_balance + $debit) - $credit;
            }
            
            $data['code']            = $supplier_info->code;
            $data['name']            = $supplier_info->name;
            $data['initial_balance'] = $initital_balance;
            $data['balance']         = $balance;
            $data['credit']          = $credit;
            $data['debit']           = $debit;
            $data['status']          = ($balance <= 0 ? "Payable" : "Receivable");

        }else {
            $data['code']            = '';
            $data['name']            = '';
            $data['initial_balance'] = 0;
            $data['debit']           = 0;
            $data['credit']          = 0;
            $data['balance']         = 0;
            $data['status']          = "Receivable";
        }

        return $data;
    }
}
