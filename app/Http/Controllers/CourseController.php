<?php

namespace App\Http\Controllers;

use App\Branch;
use App\Course;
use App\Stream;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\Facades\DataTables;

class CourseController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the roles page
     *
     */
    public function index()
    {
        try{
            $branches = Branch::pluck('name','id');
            return view('admin.course', compact('branches'));
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    /**
     * Show the role list with associate permissions.
     * Server side list view using yajra datatables
     */

    public function getCourseList(Request $request)
    {

        $data  = Course::get();

        return Datatables::of($data)
            ->addColumn('code', function($data){
                return $data->code;
            })
            ->addColumn('name', function($data){
                return $data->name;
            })
            ->addColumn('credits', function($data){
                return $data->credits;
            })
            ->addColumn('branches', function($data){
                return $data->branch->name;
            })
            ->addColumn('action', function($data){
                if (Auth::user()->can('manage_course')){
                    return '<div class="table-actions">
                                    <a href="'.url('course/delete/'.$data->id).'"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </div>';
                }else{
                    return '';
                }
            })
            ->rawColumns(['code','name','credits','branches','action'])
            ->make(true);
    }

    /**
     * Store new roles with assigned permission
     * Associate permissions will be stored in table
     */

    public function create(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'code' => 'required',
            'course' => 'required',
            'credits' => 'required',
            'branch' => 'required',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withInput()->with('error', $validator->messages()->first());
        }
        try{
            $course = Course::create([
                'name' => $request->course,
                'code' => $request->code,
                'credits' => $request->credits,
                'branch_id' => $request->branch,
            ]);

            if($course){
                return redirect('course')->with('success', 'Course created succesfully!');
            }else{
                return redirect('course')->with('error', 'Failed to create course! Try again.');
            }
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }



    public function update(Request $request)
    {
        $course = Course::find($request->id);
        if ($request->name) {
            $course->name = $request->name;
        }
        if ($request->code) {
            $course->code = $request->code;
        }
        if ($request->credits) {
            $course->credits = $request->credits;
        }
        $course->save();
        return $course;
    }


    public function delete($id)
    {
        $course = Course::find($id);
        if($course){
            $course->delete();
            return redirect('course')->with('success', 'Course deleted!');
        }else{
            return redirect('404');
        }
    }
}
