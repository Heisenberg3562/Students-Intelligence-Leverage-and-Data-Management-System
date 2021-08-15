<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            [
                'name' => 'Super Admin',
                'email' => 'admin@test.com',
                'password' => Hash::make('12345678'),
            ],
            [
                'name' => 'Project Manager',
                'email' => 'pm@test.com',
                'password' => Hash::make('12345678'),
            ],
            [
                'name' => 'Sales Manager',
                'email' => 'sm@test.com',
                'password' => Hash::make('12345678'),
            ],
            [
                'name' => 'HR',
                'email' => 'hr@test.com',
                'password' => Hash::make('12345678'),
            ]
        ]);
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
        DB::table('permissions')->insert([
            [
                'name' => 'manage_role',
                'guard_name' => 'web',
            ],
            [
                'name' => 'manage_permission',
                'guard_name' => 'web',
            ],
            [
                'name' => 'manage_user',
                'guard_name' => 'web',
            ],
            [
                'name' => 'manage_sales',
                'guard_name' => 'web',
            ]
        ]);
        DB::table('role_has_permissions')->insert([
            [
                'permission_id' => '4',
                'role_id' => '2',
            ],
            [
                'permission_id' => '5',
                'role_id' => '2',
            ],
            [
                'permission_id' => '5',
                'role_id' => '4',
            ],
            [
                'permission_id' => '6',
                'role_id' => '2',
            ],
            [
                'permission_id' => '6',
                'role_id' => '3',
            ]
        ]);
        DB::table('model_has_roles')->insert([
            [
                'role_id' => '1',
                'model_type' => 'App\user',
                'model_id' => '1'
            ],
            [
                'role_id' => '2',
                'model_type' => 'App\user',
                'model_id' => '4'
            ],
            [
                'role_id' => '3',
                'model_type' => 'App\user',
                'model_id' => '2'
            ],
            [
                'role_id' => '4',
                'model_type' => 'App\user',
                'model_id' => '3'
            ]
        ]);
    }
}
