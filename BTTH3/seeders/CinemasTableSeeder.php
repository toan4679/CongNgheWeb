<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class CinemasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 10; $i++) {
            DB::table('cinemas')->insert([
                'id' => $i + 601, 
                'name' => $faker->company . ' Cinemas',
                'location' => $faker->address,
                'total_seats' => $faker->numberBetween(100, 500),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
