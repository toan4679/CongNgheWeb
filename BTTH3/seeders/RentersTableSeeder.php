<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RentersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $maxId = DB::table('renters')->max('id');

        for ($i = $maxId + 1; $i <= $maxId + 20; $i++) {
            DB::table('renters')->insert([
                'id' => $i, 
                'name' => $faker->name,
                'phone_number' => substr($faker->phoneNumber, 0, 15), 
                'email' => $faker->email,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
