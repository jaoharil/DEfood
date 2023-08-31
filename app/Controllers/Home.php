<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
      
    return  View('utama/index');
        
    }
    public function dasboard()
    {
        $data = [
            'title' => 'Dasboard | DEfood'
       ];
        
        return View('pages/dasboard', $data);
        
    }

    public function login()
    {
      
    return  View('auth/login');
        
    }
    public function register()
    {
        return view('auth/register');
    }
    public function user()
    {
        return view('pages/dasboard');
    }
   
}
