<?php

namespace Database\Seeders;

use App\Models\Hewan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class HewanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       $faker= \Faker\Factory::create('id_ID'); //nama pemilik indonesia
        for ($i=0; $i<10; $i++){
            Hewan::create([
                'nama_hewan'=>$faker->name,
                'jenis'=>$faker->randomElement(['Kucing','Anjing']),
                'pemilik'=>$faker->name,
            ]);
        }


    }
}
