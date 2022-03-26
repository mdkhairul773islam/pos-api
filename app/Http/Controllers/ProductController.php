<?php
namespace App\Http\Controllers;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subcategory;
use App\Models\Unit;
use Illuminate\Http\Request;

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

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $productName = trim($request->name);

        // generate product code
        $code = rand(100000, 999999);
        while (Product::where('code', $code)->first())
        {
            $code = rand(100000, 999999);
        }

        if (Product::where('name', $productName)->first())
        {
            $data = ['warning' => 'This product already exists.'];
        }
        else
        {

            $data = new Product;

            $data->code = $code;
            $data->name = $productName;
            $data->category_id = $request->category_id;
            $data->brand_id = $request->brand_id;
            $data->purchase_price = $request->purchase_price;
            $data->sale_price = $request->sale_price;
            $data->status = $request->status;
            $data->unit_id = $request->unit_id;

            $data->save();

            $data = ['success' => 'Product successfully added.'];
        }

        return response()->json($data, 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        // get product info
        $data = Product::where('id', $id)->first();

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
        if (Product::find($id)->delete())
        {
            $data = Product::select("*")->orderBy("id", "desc")
                ->with('category', 'brand', 'unit')
                ->get();
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
        $data = Category::select('id', 'name')->paginate($request->per_page);
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
            $message = ['warning' => 'This category already exists.'];
        }
        else
        {

            $data = new Category;
            $data->name = $category;
            $data->save();

            $message = ['success' => 'Category successfully added.'];

            $data = Category::select("*")->orderBy("id", "desc")
                ->get();
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
            $message = ['warning' => 'This category already exists.'];
        }
        else
        {

            $data = Category::find($request->id);
            $data->name = $category;

            $data->save();

            $message = ['update' => 'Category successfully updated.'];
            $data = Category::select("*")->orderBy("id", "desc")
                ->get();
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

        $data = Category::select("*")->orderBy("id", "desc")
            ->get();

        return response()
            ->json($data, 200);
    }

    /**
     * show all subcategory.
     */
    public function subcategory(Request $request)
    {
        $data = Subcategory::all();
        return response()->json($data, 200);
    }

    /**
     * store subcategory.
     */
    public function subcategoryStore(Request $request)
    {
        $subcategory = trim($request->name);

        if (Subcategory::where('name', $subcategory)->first())
        {
            $message = ['warning' => 'This subcategory already exists.'];
        }
        else
        {

            $data = new Subcategory;
            $data->name = $subcategory;
            $data->save();

            $message = ['success' => 'Subcategory successfully added.'];
        }

        return redirect()->route('admin.product.subcategory')
            ->with($message);
    }

    /**
     * edit subcategory.
     */
    public function subcategoryEdit(Request $request)
    {
        return Subcategory::select(['id', 'name'])->find($request->id);
    }

    /**
     * update subcategory.
     */
    public function subcategoryUpdate(Request $request)
    {

        $subcategory = trim($request->name);

        if (Subcategory::where('name', $subcategory)->where('id', '!=', $request->id)
            ->first())
        {
            $message = ['warning' => 'This subcategory already exists.'];
        }
        else
        {

            $data = Subcategory::find($request->id);
            $data->name = $subcategory;
            $data->save();

            $message = ['update' => 'Subcategory successfully updated.'];
        }

        return redirect()->route('admin.product.subcategory')
            ->with($message);
    }

    /**
     * delete subcategory.
     */
    public function subcategoryDestroy($id)
    {
        Subcategory::find($id)->delete();

        return redirect()
            ->route('admin.product.subcategory')
            ->with(['delete' => 'Subcategory deleted successful.']);
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
            $message = ['warning' => 'This brand already exists.'];
        }
        else
        {

            $data = new Brand;
            $data->name = $brand;
            $data->save();

            $message = ['success' => 'Brand successfully added.'];
            $data = Brand::select("*")->orderBy("id", "desc")
                ->get();
        }

        return response()
            ->json($data, 200);
    }

    /**
     * edit brand.
     */
    public function brandEdit(Request $request)
    {
        return Brand::select(['id', 'name'])->find($request->id);
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
            $message = ['warning' => 'This brand already exists.'];
            return response()->json($message, 200);
        }
        else
        {
            $data = Brand::find($request->id);
            $data->name = $brand;
            $data->save();

            $brandList = Brand::select("*")->orderBy("id", "desc")
                ->get();
        }

        return response()
            ->json($brandList, 200);
    }

    /**
     * delete brand.
     */
    public function brandDestroy($id)
    {
        Brand::find($id)->delete();

        $brandList = Brand::select("*")->orderBy("id", "desc")
            ->get();
        return response()
            ->json($brandList, 200);
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
            $message = ['warning' => 'This unit already exists.'];
        }
        else
        {

            $data = new Unit;

            $data->unit = $unit;

            $data->save();

            $message = ['success' => 'Unit successfully added.'];
            $data = Unit::select("*")->orderBy("id", "desc")
                ->get();
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
            $message = ['warning' => 'This unit already exists.'];
        }
        else
        {

            $data = Unit::find($request->id);
            $data->unit = $unit;
            $data->save();

            $unitList = Unit::select("*")->orderBy("id", "desc")
                ->get();
        }

        return response()
            ->json($unitList, 200);
    }

    /**
     * delete unit.
     */
    public function unitDestroy($id)
    {
        Unit::find($id)->delete();

        $unitList = Unit::select("*")->orderBy("id", "desc")
            ->get();

        return response()
            ->json($unitList, 200);
    }

}