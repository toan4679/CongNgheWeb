<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class It_centersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 5; $i++) {
            DB::table('it_centers')->insert([
                'id' => $i + 401, 
                'name' => $faker->company . ' IT Center',
                'location' => $faker->address,
                'contact_email' => $faker->email,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
