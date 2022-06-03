<?php

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
    // file: $request->phot //your base64 encoded data and $uplode_path public folder inside any folder name 
    function base64FormatingFileUplaod($file ='', $upload_path =''){

        $file_64 = $file;  //your base64 encoded data
        $extension = explode('/', explode(':', substr($file_64, 0, strpos($file_64, ';')))[1])[1];   // .jpg .png .pdf
        $replace = substr($file_64, 0, strpos($file_64, ',')+1); 
        // find substring fro replace here eg: data:file/png;base64,
        $file = str_replace($replace, '', $file_64); 
        $file = str_replace(' ', '+', $file); 
        $fileName = Str::random(10).'.'.$extension;
        $file_name_path = 'public/'.$upload_path.$fileName;
    
        //Storage::disk('public')->put($fileName, base64_decode($file));
        file_put_contents($file_name_path, base64_decode($file));
        
        return $file_name_path;
    }

}