<?php

namespace App\Imports;

use App\User;
use App\Marks;
use LDAP\Result;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Result([

            //
            'id'     => $row[0],
            'sem'    => $row[1],
            'sgpi' => $row[2],
            'credits'     => $row[3],
            'cxgp'    => $row[4],
            'attempt' => $row[5],
            'results' =>$row[6],
            'user_id' =>$row[7]
        ]);
    }
}
