<?php

namespace Database\Seeders;

use App\Models\Obat;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ObatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Obat::create([
            'nama_obat' => 'Paracetamol',
            'deskripsi' => 'Obat untuk meredakan demam dan nyeri ringan hingga sedang.',
            'harga' => 2000.00,
        ]);
        Obat::create([
            'nama_obat' => 'Amoxicillin',
            'deskripsi' => 'Antibiotik untuk infeksi bakteri.',

            
            'harga' => 3500.00,
        ]);
    }
}
