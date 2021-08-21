<?php

namespace App\Http\Controllers;

use App\Branch;
use App\Course;
use App\Semester;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\Facades\DataTables;

class SemesterController extends Controller
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
            $courses = Course::pluck('name','id');
            return view('admin.semester', compact('branches','courses'));
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    public function getCoursesList(Request $request){
        $courses = Course::where('branch_id',$request->branch_id)->get();
        $html = '';
        foreach ($courses as $course){
            $html .= '<option value="'.$course->id.'">'.$course->name.'</option>';
        }
        return $html;
    }

    /**
     * Show the role list with associate permissions.
     * Server side list view using yajra datatables
     */

    public function getSemesterList(Request $request)
    {

        $data  = Semester::get();

        return Datatables::of($data)
            ->addColumn('batch', function($data){
                return $data->batch;
            })
            ->addColumn('number', function($data){
                return $data->number;
            })
            ->addColumn('branches', function($data){
                return $data->branch->name;
            })
            ->addColumn('action', function($data){
                if (Auth::user()->can('manage_semester')){
                    return '<div class="table-actions">
                                    <a href="'.url('semester/delete/'.$data->id).'"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                </div>';
                }else{
                    return '';
                }
            })
            ->rawColumns(['batch','number','branches','action'])
            ->make(true);
    }

    /**
     * Store new roles with assigned permission
     * Associate permissions will be stored in table
     */

    public function create(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'number' => 'required',
            'batch' => 'required',
            'branch' => 'required',
            'course' => 'required',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withInput()->with('error', $validator->messages()->first());
        }
        try{
            $semester = Semester::create([
                'number' => $request->number,
                'batch' => $request->batch,
                'branch_id' => $request->branch,
            ]);
            foreach ($request->course as $course){
                DB::table('semester_has_courses')->insert([
                    'semester_id' => $semester->id,
                    'course_id' => $course
                ]);
            }
            if($semester){
                return redirect('semester')->with('success', 'Semester created successfully!');
            }else{
                return redirect('semester')->with('error', 'Failed to create semester! Try again.');
            }
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    public function update(Request $request)
    {
        $semester = Semester::find($request->id);
        if ($request->number) {
            $semester->number = $request->number;
        }
        if ($request->batch) {
            $semester->batch = $request->batch;
        }
        $semester->save();
        return $semester;
    }


    public function delete($id)
    {
        $semester = Semester::find($id);
        if($semester){
            $semester->delete();
            return redirect('semester')->with('success', 'Semester deleted!');
        }else{
            return redirect('404');
        }
    }
}
