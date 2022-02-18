<?php

namespace App\Http\Controllers;
use App\Imports\ResultImport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use LDAP\Result;

class ResultController extends Controller
{
    //
    public function import()
    {
        Excel::import(new Result, '');

        return redirect('/')->with('success', 'All good!');
    }
}
