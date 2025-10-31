<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Package;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::active()->paginate(12);
        return view('frontend.packages.index', compact('packages'));
    }

    public function show($id, $slug)
    {
        $package = Package::where('id', $id)->firstOrFail();
        return view('frontend.packages.show', compact('package'));
    }

    public function category($category)
    {
        // TODO: Implement category filtering
        $packages = Package::active()->paginate(12);
        return view('frontend.packages.index', compact('packages'));
    }

    public function byAgent($agent_id)
    {
        $packages = Package::where('user_id', $agent_id)->active()->paginate(12);
        return view('frontend.packages.index', compact('packages'));
    }

    public function search(Request $request)
    {
        $query = $request->get('q');
        $packages = Package::where('title', 'like', "%{$query}%")
            ->active()
            ->paginate(12);
        return view('frontend.packages.index', compact('packages'));
    }

    public function filter(Request $request)
    {
        // TODO: Implement advanced filtering
        $packages = Package::active()->paginate(12);
        return view('frontend.packages.index', compact('packages'));
    }

    // API Methods
    public function apiSearch(Request $request)
    {
        $query = $request->get('q');
        $packages = Package::where('title', 'like', "%{$query}%")
            ->active()
            ->get();
        return response()->json($packages);
    }

    public function apiDetails($id)
    {
        $package = Package::find($id);
        return response()->json($package);
    }

    public function apiCategories()
    {
        // TODO: Implement categories
        return response()->json([]);
    }
}
