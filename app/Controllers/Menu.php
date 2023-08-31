<?php

namespace App\Controllers;

class Menu extends BaseController
{
  protected $PizzaModel;
  public function __construct()
  {
    $this->PizzaModel = new \App\Models\PizzaModel();
  }
  public function index(){
    $data= [
    'title' => 'Pizza'
    ];
    return View('menu/pizza', $data);
    
  }
  public function pizza(){
    $pizza = $this->PizzaModel->findAll();
    $data= [
    'title' => 'Pizza',
    'pizza' => $pizza
    ];

    
    
    return View('menu/pizza', $data);
    
  }

  public function create(){
    //session();
    $data = [
      'title' => 'Form Tambah Data Pizza',
      'validation' => \Config\Services::validation()
    ];
    return View('menu/create', $data);
  }

  public function save(){


    // //validasi input
    // if(!$this->validate(
    //   [
    //     'nama' => [
    //       'rules' => 'required',
    //       'errors' => '{field} harus di isi'
    //     ],
    //     'harga' => 'required',
    //     'sampul' => 'required',
    //   ]
    // )){
    //   $validation = \Config\Services::validation();
    //   return redirect()->to('/Menu/create')->withInput()->with('validation', $validation);
    // }

    $this->PizzaModel->save(
      [
        'nama' =>$this->request->getVar('nama'),
        'harga' =>$this->request->getVar('harga'),
        'sampul' =>$this->request->getVar('sampul')
      ]
      );

      session()->setFlashdata('pesan', 'Data berhasil ditambahkan');
    return redirect()->to('/Menu/pizza');

  }

  public function delete($id){
    $this->PizzaModel->delete($id);
    session()->setFlashdata('pesan', 'Data berhasil dihapus');
    return redirect()->to('/Menu/pizza');
    
  }

  public function edit($id){
    $data = [
      'title' => 'Form Ubah Data Pizza',
      'validation' => \Config\Services::validation(),
      'pizza' => $this->PizzaModel->getPizza($id)
    ];
    return View('/Menu/edit', $data);

  }

 public function update($id){
  if(!$this->validate(
    [
      'nama' => [
        'rules' => 'required',
        'errors' => '{field} harus di isi'
      ],
      'harga' => 'required',
      'sampul' => 'required',
    ]
  )){
    $validation = \Config\Services::validation();
    return redirect()->to('/Menu/edit')->withInput()->with('validation', $validation);
  }
  $this->PizzaModel->save(
    
    [
      'id' => $id,
      'nama' =>$this->request->getVar('nama'),
      'harga' =>$this->request->getVar('harga'),
      'sampul' =>$this->request->getVar('sampul')
    ]
    );
    session()->setFlashdata('pesan', 'Data berhasil diUbah');
    return redirect()->to('/Menu/pizza');
 }

}