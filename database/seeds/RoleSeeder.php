<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert([
            [
                'name' => 'Super Admin',
                'guard_name' => 'web',
            ],
            [
                'name' => 'Project Manager',
                'guard_name' => 'web',
            ],
            [
                'name' => 'Sales Manager',
                'guard_name' => 'web',
            ],
            [
                'name' => 'HR',
                'guard_name' => 'web',
            ]
        ]);
    }
}
