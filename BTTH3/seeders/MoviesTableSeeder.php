<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class MoviesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $cinema_ids = DB::table('cinemas')->pluck('id')->toArray(); 

        for ($i = 0; $i < 20; $i++) {
            DB::table('movies')->insert([
                'id' => $i + 5001, 
                'title' => $faker->sentence(3), 
                'director' => $faker->name, 
                'release_date' => $faker->date(), 
                'duration' => $faker->numberBetween(90, 180), 
                'cinema_id' => $faker->randomElement($cinema_ids), 
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
