<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Costumer extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_costumer' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'nama_costumer' => [
                'type'       => 'VARCHAR',
                'constraint' => '225',
            ],
            'no_tlpn' => [
                'type' => 'INT',
                'constraint' => '12',
            ],
            'alamat' => [
                'type' => 'VARCHAR',
                'constraint' => '225',
            ],
            'created_at' => [
                'type' => 'DATETIME',
                'null' => TRUE
            ],
            'update_at' => [
                'type' => 'DATETIME',
                'null' => TRUE
            ],

        ]);
        $this->forge->addKey('id_costumer', true);
        $this->forge->createTable('costumer');
    }

    public function down()
    {
        $this->forge->dropTable('costumer');
    }
}
