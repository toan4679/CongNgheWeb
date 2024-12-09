<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $libraries = DB::table('libraries')->pluck('id')->toArray();

        for ($i = 1; $i <= 50; $i++) {
            DB::table('books')->insert([
                'id' => $i,
                'title' => $faker->sentence(3), 
                'author' => $faker->name, 
                'publication_year' => $faker->year, 
                'genre' => $faker->word, 
                'library_id' => $faker->randomElement($libraries), 
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
