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