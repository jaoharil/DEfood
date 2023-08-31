<?php

namespace App\Models;

use CodeIgniter\Model;

class PizzaModel extends Model
{
    protected $table = 'pizza';
    
    protected $allowedFields = ['nama','id', 'harga', 'sampul'];

    public function getPizza($id = false) {
        if($id == false) {
            return $this->findAll();
        }
        return $this->where(['id' => $id]) ->first();
    }
}