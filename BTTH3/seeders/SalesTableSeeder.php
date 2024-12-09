<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
 use Illuminate\Support\Facades\DB;

class SalesTableSeeder extends Seeder
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
            $medicine = DB::table('medicines')->inRandomOrder()->first();
            if ($medicine) {
                $medicine_id = $medicine->medicine_id;
                    DB::table('sales')->insert([
                        'sale_id' => $i + 1,
                        'medicine_id' => $medicine_id, 
                        'quantity' => $faker->numberBetween(1, 10), 
                        'sale_date' => $faker->dateTimeThisYear(),
                        'customer_phone' => substr($faker->phoneNumber, 0, 10),
                        'created_at' => now(), 
                        'updated_at' => now(), 
                ]);
            }
        }
    }
}
