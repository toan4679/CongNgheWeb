<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class Hardware_devicesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $itCenterIds = DB::table('it_centers')->pluck('id')->toArray();

        for ($i = 0; $i < 20; $i++) {
            DB::table('hardware_devices')->insert([
                'id' => $i + 3001, 
                'device_name' => $faker->word . ' ' . $faker->word, 
                'type' => $faker->randomElement(['Mouse', 'Keyboard', 'Headset']),
                'status' => $faker->boolean(), 
                'center_id' => $faker->randomElement($itCenterIds),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
