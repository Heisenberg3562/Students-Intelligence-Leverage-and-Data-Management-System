<?php

namespace App\Http\Controllers;

use App\Branch;
use App\Skill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

use App\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use DataTables,Auth;

class UserController extends Controller
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('users');
    }

    public function getUserList(Request $request)
    {

        $data  = User::get();

        return Datatables::of($data)
                ->addColumn('roles', function($data){
                    $roles = $data->getRoleNames()->toArray();
                    $badge = '';
                    if($roles){
                        $badge = implode(' , ', $roles);
                    }

                    return $badge;
                })
                ->addColumn('permissions', function($data){
                    $roles = $data->getAllPermissions();
                    $badges = '';
                    foreach ($roles as $key => $role) {
                        $badges .= '<span class="badge badge-dark m-1">'.$role->name.'</span>';
                    }

                    return $badges;
                })
                ->addColumn('action', function($data){
                    if($data->name == 'Super Admin'){
                        return '';
                    }
                    if (Auth::user()->can('manage_user')){
                        return '<div class="table-actions">
                                <a href="'.url('user/'.$data->id).'" ><i class="ik ik-edit-2 f-16 mr-15 text-green"></i></a>
                                <a href="'.url('user/delete/'.$data->id).'"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                            </div>';
                    }else{
                        return '';
                    }
                })
                ->rawColumns(['roles','permissions','action'])
                ->make(true);
    }

    public function create()
    {
        try
        {
            $roles = Role::pluck('name','id');
            $branches = Branch::pluck('name','id');
            return view('create-user', compact('roles','branches'));

        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);

        }
    }

    public function store(Request $request)
    {
        // create user
        $validator = Validator::make($request->all(), [
            'name'     => 'required | string ',
            'email'    => 'required | email | unique:users',
            'rollno'    => 'required | string | unique:users',
            'branch'    => 'required | string',
            'gender'    => 'required | string',
            'yos'    => 'required | string',
            'dob'    => 'required | string',
            'email2'    => 'required | email',
            'cursem'    => 'required | string',
            'batchyear'    => 'required | string',
            'password' => 'required | confirmed',
            'phone' => 'required | string | max:10',
            'address' => 'required | string',
            'role'     => 'required'
        ]);

        if($validator->fails()) {
            return redirect()->back()->withInput()->with('error', $validator->messages()->first());
        }
        try
        {
            // store user information
            $user = User::create([
                'name'              => $request->name,
                'email'             => $request->email,
                'email2'            => $request->email2,
                'branch_id'         => $request->branch,
                'gender'            => $request->gender,
                'year_of_study'     => $request->yos,
                'dob'               => $request->dob,
                'current_semester'  => $request->cursem,
                'batch_year'        => $request->batchyear,
                'rollno'            => strtoupper($request->rollno),
                'phone'             => $request->phone,
                'address'           => $request->address,
                'password'          => Hash::make($request->password),
            ]);

            // assign new role to the user
            $user->syncRoles($request->role);

            if($user){
                return redirect('users')->with('success', 'New user created!');
            }else{
                return redirect('users')->with('error', 'Failed to create new user! Try again.');
            }
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    public function edit($id)
    {
        try
        {
            $user  = User::with('roles','permissions')->find($id);

            if($user){
                $user_role = $user->roles->first();
                $roles     = Role::pluck('name','id');
                $branches = Branch::pluck('name','id');
                return view('user-edit', compact('user','user_role','roles','branches'));
            }else{
                return redirect('404');
            }

        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    public function update(Request $request)
    {

        // update user info
        $validator = Validator::make($request->all(), [
            'id'       => 'required',
            'name'     => 'sometimes | string ',
            'email'    => 'sometimes | email',
            'rollno'    => 'sometimes | string',
            'branch'    => 'sometimes | string',
            'gender'    => 'sometimes | string',
            'yos'    => 'sometimes | string',
            'dob'    => 'sometimes | string',
            'email2'    => 'sometimes | email',
            'cursem'    => 'sometimes | string',
            'batchyear'    => 'sometimes | string',
            'phone' => 'sometimes | string | max:10',
            'address' => 'sometimes | string',
            'role'     => 'required'
        ]);

        // check validation for password match
        if(isset($request->password)){
            $validator = Validator::make($request->all(), [
                'password' => 'required | confirmed'
            ]);
        }

        if ($validator->fails()) {
            return redirect()->back()->withInput()->with('error', $validator->messages()->first());
        }

        try{

            $user = User::find($request->id);

            $update = $user->update([
                'name'              => $request->name,
                'email'             => $request->email,
                'email2'            => $request->email2,
                'branch_id'         => $request->branch,
                'gender'            => $request->gender,
                'year_of_study'     => $request->yos,
                'dob'               => $request->dob,
                'current_semester'  => $request->cursem,
                'batch_year'        => $request->batchyear,
                'rollno'            => strtoupper($request->rollno),
                'phone'             => $request->phone,
                'address'           => $request->address,
            ]);

            // update password if user input a new password
            if(isset($request->password)){
                $update = $user->update([
                    'password' => Hash::make($request->password)
                ]);
            }

            // sync user role
            $user->syncRoles($request->role);

            return redirect()->back()->with('success', 'User information updated successfully!');
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);

        }
    }


    public function delete($id)
    {
        $user   = User::find($id);
        if($user){
            $user->delete();
            return redirect('users')->with('success', 'User removed!');
        }else{
            return redirect('users')->with('error', 'User not found');
        }
    }

    public function profile($id)
    {
        try
        {
            $user  = User::with('roles','permissions')->find($id);

            if($user){
                $user_role = $user->roles->first();
                $roles     = Role::pluck('name','id');
                $branches = Branch::pluck('name','id');
                $skills = Skill::where('user_id',Auth::user()->id)->get();
                $colors = array("bg-success","bg-info","bg-danger","bg-warning");
                return view('admin.student.profile', compact('user','user_role','roles','branches','skills','colors'));
            }else{
                return redirect('404');
            }

        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    public function myProfile()
    {
        try
        {
//            $user  = User::with('roles','permissions')->find($id);
            $user = Auth::user();
            if($user){
                $user_role = $user->roles->first();
                $roles     = Role::pluck('name','id');
                $branches = Branch::pluck('name','id');
                $skills = Skill::where('user_id',Auth::user()->id)->get();
                $colors = array("bg-success","bg-info","bg-danger","bg-warning");
                return view('admin.student.profile', compact('user','user_role','roles','branches','skills','colors'));
            }else{
                return redirect('404');
            }

        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);
        }
    }

    public function updateMyProfile(Request $request)
    {

        foreach ($request['group-a'] as $skset){
            if ($skset['skill'] and $skset['percent']) {
                $skill = Skill::create([
                    'user_id' => Auth::user()->id,
                    'name' => $skset['skill'],
                    'percentage' => $skset['percent']
                ]);
            }
        }
        $skills = Skill::where('user_id',Auth::user()->id)->get();
        $validator = Validator::make($request->all(), [
            'bio'       => 'required | string',
        ]);
        // check validation for password match
        if(isset($request->prev_password)){
            $validator = Validator::make($request->all(), [
                'prev_password' => 'required | password',
                'password' => 'required | min:8 | confirmed'
            ]);
        }
        if ($validator->fails()) {
            return redirect()->back()->withInput()->with('error', $validator->messages()->first());
        }
        try{

            $user = Auth::user();

            $update = $user->update([
                'bio'              => $request->bio,
            ]);

            if(isset($request->prev_password)){
                $update = $user->update([
                    'password' => Hash::make($request->password)
                ]);
            }
            return redirect()->back()->with('success', 'User information updated successfully!');
        }catch (\Exception $e) {
            $bug = $e->getMessage();
            return redirect()->back()->with('error', $bug);

        }
    }

}
