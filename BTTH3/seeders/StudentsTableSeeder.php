<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class StudentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $classes = DB::table('classes')->pluck('id')->toArray();

        for ($i = 0; $i < 50; $i++) {
            DB::table('students')->insert([
                'id' => $i + 1,
                'first_name' => $faker->firstName, 
                'last_name' => $faker->lastName, 
                'date_of_birth' => $faker->date, 
                'parent_phone' => $faker->phoneNumber, 
                'class_id' => $faker->randomElement($classes), 
                'created_at' => now(), 
                'updated_at' => now(), 
            ]);
        }
    }
}
