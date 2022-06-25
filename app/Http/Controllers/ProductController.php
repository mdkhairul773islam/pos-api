<?php
namespace App\Http\Controllers;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');

    }

    public function index(Request $request)
    {
        // get all product
        $data = Product::select("*")->orderBy("id", "desc")
            ->with('category', 'brand', 'unit')
            ->paginate($request->per_page);
        return response()
            ->json($data, 200);
    }

    // Onlay product name get for product list
    public function productList(Request $request)
    {
        // get all product
        $data = Product::select("name as label", "code as value ")->orderBy("name", "ASC")
            ->get();
        return response()
            ->json($data, 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

       $product_name = trim($request->name);
        // generate product code
        $code = rand(100000, 999999);
         while (Product::where('code', $code)->first())
        {
            $code = rand(100000, 999999);
        }
        if (Product::where('name', $product_name)->first())
        {
            $data = ['warning' => 'This product already exists.'];
        }
        else
        {
            $data = new Product;
            $data->code = $code;
            $data->name = $product_name;
            $data->category_id = $request->category_id;
            $data->brand_id = $request->brand_id;
            $data->purchase_price = $request->purchase_price;
            $data->sale_price = $request->sale_price;
            $data->status = $request->status;
            $data->unit_id = $request->unit_id;

            if(!empty($request->photo)){
                $filename_path =  base64FormatingFileUplaod($request->photo, 'upload/');
                $data->photo   = $filename_path;
            }

            $data->save();

            $data = ['success' => 'Product successfully added.'];
        }

        return response()
            ->json($data, 200);

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        // get product info
        $data = Product::find($id);
        return response()
            ->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {

        $productName = trim($request->name);

        if (Product::where('name', $productName)->where('id', '!=', $request->id)
            ->first())
        {
            $data = ['warning' => 'This product already exists.'];
        }
        else
        {

            $data = Product::find($request->id);

            $data->name = $productName;
            $data->category_id = $request->category_id;
            $data->brand_id = $request->brand_id;
            $data->purchase_price = $request->purchase_price;
            $data->sale_price = $request->sale_price;
            $data->status = $request->status;
            $data->unit_id = $request->unit_id;

            // file upload and unlink process
            if(!empty($request->new_photo)){
                $filename_path =  base64FormatingFileUplaod($request->new_photo, 'upload/');
                if(!empty($filename_path)){
                    (!empty($data->photo) ? unlink($data->photo) : '');
                    $data->photo   = $filename_path;
                }
            }

            $data->save();

            $data = ['success' => 'Product successfully updated.'];
        }
        return response()->json($data, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $product = Product::find($id);

        if (!empty($product))
        {
            (!empty($product->photo) ? unlink($product->photo) : '');
            Product::find($id)->delete();

            $data = Product::select("*")->orderBy("id", "desc")
                ->with('category', 'brand', 'unit')
                ->paginate(10);
        }
        else
        {
            $data = ['warning' => 'Product successfully not deleted.'];
        }
        return response()->json($data, 200);
    }

    /**
     * show all category.
     */
    public function category(Request $request)
    {
        $data = Category::select('id', 'name')->orderBy("id", "desc")->paginate($request->per_page);
        return response()
            ->json($data, 200);
    }

    /**
     * store category.
     */
    public function categoryStore(Request $request)
    {
        $category = trim($request->name);

        if (Category::where('name', $category)->first())
        {
            $data = ['warning' => 'This category already exists.'];
        }
        else
        {

            $data = new Category;
            $data->name = $category;
            $data->save();

            $data = ['success' => 'Category successfully added.'];
        }

        return response()
            ->json($data, 200);
    }

    /**
     * edit category.
     */
    public function categoryEdit(Request $request)
    {
        $data = Category::select(['id', 'name'])->find($request->id);
        return response()
            ->json($data, 200);
    }

    /**
     * update category.
     */
    public function categoryUpdate(Request $request)
    {
        $category = trim($request->name);

        if (Category::where('name', $category)->where('id', '!=', $request->id)
            ->first())
        {
            $data = ['warning' => 'This category already exists.'];
        }
        else
        {
            $data = Category::find($request->id);
            $data->name = $category;

            $data->save();

            $data = ['success' => 'Category successfully updated.'];
        }

        return response()
            ->json($data, 200);
    }

    /**
     * destroy category.
     */
    public function categoryDestroy($id)
    {
        Category::find($id)->delete();

        $data = ['success' => 'Category successfully deleted.'];

        return response()
            ->json($data, 200);
    }

    /**
     * all brand.
     */
    public function brand(Request $request)
    {
        $data = Brand::select("*")->orderBy("id", "desc")
            ->paginate($request->per_page);

        return response()
            ->json($data, 200);
    }

    /**
     * store brand.
     */
    public function brandStore(Request $request)
    {
        $brand = trim($request->name);

        if (Brand::where('name', $brand)->first())
        {
            $data = ['warning' => 'This brand already exists.'];
        }
        else
        {

            $data = new Brand;
            $data->name = $brand;
            $data->save();

            $data = ['success' => 'Brand successfully added.'];
        }

        return response()
            ->json($data, 200);
    }

    /**
     * edit brand.
     */
    public function brandEdit(Request $request)
    {
        $data = Brand::select(['id', 'name'])->find($request->id);
        return response()
            ->json($data, 200);
    }

    /**
     * update brand.
     */
    public function brandUpdate(Request $request)
    {

        $brand = trim($request->name);

        if (Brand::where('name', $brand)->where('id', '!=', $request->id)
            ->first())
        {
            $data = ['warning' => 'This brand already exists.'];
            return response()->json($message, 200);
        }
        else
        {
            $data = Brand::find($request->id);
            $data->name = $brand;
            $data->save();

            $data = ['success' => 'This brand updated successfylly.'];
        }

        return response()
            ->json($data, 200);
    }

    /**
     * delete brand.
     */
    public function brandDestroy($id)
    {
        Brand::find($id)->delete();
        $data = ['success' => 'Brand Successfully Deleted.'];
        return response()
            ->json($data, 200);
    }

    /**
     * all unit.
     */
    public function unit(Request $request)
    {
        $data = Unit::select("*")->orderBy("id", "desc")
        ->paginate($request->per_page);

        return response()
            ->json($data, 200);
    }

    /**
     * store brand.
     */
    public function unitStore(Request $request)
    {
        $unit = trim($request->unit);

        if (Unit::where('unit', $unit)->first())
        {
            $data = ['warning' => 'This unit already exists.'];
        }
        else
        {
            $data = new Unit;
            $data->unit = $unit;
            $data->save();
            $data = ['success' => 'Unit successfully added.'];
        }

        return response()
            ->json($data, 200);
    }

    /**
     * edit unit.
     */
    public function unitEdit($id)
    {
        $data = Unit::select(['id', 'unit'])->find($id);

        return response()->json($data, 200);
    }

    /**
     * update unit.
     */
    public function unitUpdate(Request $request)
    {
        $unit = trim($request->unit);

        if (Unit::where('unit', $unit)->where('id', '!=', $request->id)
            ->first())
        {
            $data = ['warning' => 'This unit already exists.'];
        }
        else
        {
            $data = Unit::find($request->id);
            $data->unit = $unit;
            $data->save();

            $data = ['success' => 'Unit successfully updated.'];
        }

        return response()
            ->json($data, 200);
    }

    /**
     * delete unit.
     */
    public function unitDestroy($id)
    {
        Unit::find($id)->delete();
        $data = ['success' => 'Unit Successfully Deleted.'];
        return response()
            ->json($data, 200);
    }

}
