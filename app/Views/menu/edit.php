<?= $this->extend('layouts/template'); ?>

<?= $this->section('content'); ?>

<style>
body{
    width: 800px;
  height: 900px;
  background-color: #ffffff;
  margin: auto;
  
  }
  .container{
    width: 700px;
    height: 450px;
    margin: 80px   auto;
    padding: 100px;
    text-align: center;
    border-radius: 10px;
    background-color: #9ab2db;
    display: flex;
    justify-content: center;
  }

</style>

<div class="container">
  <div class="row">
    <div class="col-10">
      <h2 class="my-3">Form Ubah Data Pizza</h2>
      
      <form action="/Menu/update/<?= $pizza['id']; ?>" method="post">
        <?= csrf_field(); ?>
  <div class="row mb-3">
    <label for="nama" class="col-sm-2 col-form-label">Nama</label>
    <div class="col-sm-10">
      <input type="text" class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : ''; ?>"  id="Nama" name="nama" aria-describedby="validationServer03Feedback" required value="<?= $pizza['nama']; ?>" >
      <div id="validationServer03Feedback" class="invalid-feedback">
      <?= $validation->getError('nama'); ?>
    </div>
    </div>
    
  </div>
  <div class="row mb-3">
    <label for="harga" class="col-sm-2 col-form-label">Harga</label>
    <div class="col-sm-10">
      <input type="text" class="form-control <?= ($validation->hasError('harga'))? 'is-invalid' : ''; ?>" id="harga" name="harga" aria-describedby="validationServer03Feedback" required value="<?= $pizza['harga']; ?>" >
      <div id="validationServer03Feedback" class="invalid-feedback">
      <?= $validation->getError('harga'); ?>
    </div>
    </div>
  </div>
  <div class="row mb-3">
    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
    <div class="col-sm-10">
    <input class="form-control <?= ($validation->hasError('sampul'))? 'is-invalid' : ''; ?>" type="file" id="sampul" name="sampul" aria-describedby="validationServer03Feedback" required value="<?= $pizza['sampul']; ?>">
      <div id="validationServer03Feedback" class="invalid-feedback">
      <?= $validation->getError('sampul'); ?>
    </div>
    </div>
  </div>
  <button type="submit"   class="btn btn-primary" >Ubah Data</button>
</form>
    </div>
  </div>
</div>


<?= $this->endSection(); ?>