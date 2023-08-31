<?php

namespace App\Controllers;

class User extends BaseController
{
  protected $PizzaModel;
  public function __construct()
  {
    $this->PizzaModel = new \App\Models\PizzaModel();
  }
    public function index()
    
      {
        $pizza = $this->PizzaModel->findAll();
        $data = [
            'pizza' => $pizza,
            'title'  => 'Register',
            'config' => config('Auth'),
        ];
        return view('user/index',$data);
    }
 
    
    
  }