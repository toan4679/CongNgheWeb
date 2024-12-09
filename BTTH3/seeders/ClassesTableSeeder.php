<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class ClassesTableSeeder extends Seeder
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
            DB::table('classes')->insert([
                'id' => $i + 1,
                'grade_level' => $faker->randomElement(['Pre-K', 'Kindergarten']), 
                'room_number' => $faker->word . rand(1, 10), 
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
