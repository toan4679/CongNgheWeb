<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class LaptopsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $renters = DB::table('renters')->pluck('id')->toArray();

        for ($i = 0; $i < 20; $i++) {
            DB::table('laptops')->insert([
                'id' => $i + 1001, 
                'brand' => $faker->randomElement(['Dell', 'HP', 'Lenovo', 'Acer']),
                'model' => $faker->word() . ' ' . rand(1000, 9999), 
                'specifications' => $faker->randomElement(['i5, 8GB RAM, 256GB SSD', 'i7, 16GB RAM, 512GB SSD', 'AMD Ryzen 5, 8GB RAM, 256GB SSD']),
                'rental_status' => $faker->boolean, 
                'renter_id' => $faker->randomElement($renters), 
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
