<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class MedicinesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++){
            DB::table('medicines') ->insert([
                'medicine_id' => $i + 1,
                'name' => $faker->word, 
                'brand' => $faker->company, 
                'dosage' => $faker->word, 
                'form' => $faker->randomElement(['Viên nén', 'Xi-rô', 'Thuốc bột', 'Viên con nhộng']), 
                'price' => $faker->randomFloat(2, 10, 500), 
                'stock' => $faker->numberBetween(0, 1000),
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }
    }
}
