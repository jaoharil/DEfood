<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;
use CodeIgniter\Database\Seeder;

class CostumerSeeder extends Seeder
{
    public function run()
    {
      $faker = \Faker\Factory::create('ja_JP');
      for ($i = 0; $i < 200; $i++) {
      
      $data = [
          
            'nama_costumer' => $faker->name,
            'no_tlpn'    => $faker->phoneNumber,
            'alamat' => $faker->address,
            'created_at' => Time::now(),
            'update_at' => Time::now()
          
        ];
        
        $this->db->table('costumer')->insert($data);
      }
        // $data = [
        //   [
        //     'nama_costumer' => 'oril',
        //     'no_tlpn'    => '087374888654',
        //     'alamat' => 'jl niaga mataram',
        //     'created_at' => Time::now(),
        //     'update_at' => Time::now()
        //   ],
        //   [
        //     'nama_costumer' => 'aril',
        //     'no_tlpn'    => '08837489864',
        //     'alamat' => 'jl niaga selong',
        //     'created_at' => Time::now(),
        //     'update_at' => Time::now()
        //   ],
        // ];

        // Simple Queries
        // $this->db->query('INSERT INTO costumer (nama_costumer, no_tlpn, alamat, created_at, update_at) VALUES(:nama_costumer:, :no_tlpn:, :alamat:, :created_at:, :update_at:)', $data);

        // Using Query Builder
        //  $this->db->table('costumer')->insertBatch($data);
        }
}