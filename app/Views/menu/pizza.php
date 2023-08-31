<?= $this->extend('layouts/template'); ?>

<?= $this->section('content'); ?>

<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<style>
  
  body{
    width: 800px;
  height: 900px;
  background-color: aqua;
  margin: auto;
 
  }
  .container{
    width: 700px;
    height: 300px;
    margin: 20px;
    padding: 50px;
    text-align: center;
    
   
    
    
  }
 .card img{
  padding: 20px;
 }
  
</style>


<div class="container ">
  <div class="row">
    <div class="col" data-aos="zoom-out-down" data-aos-delay="500">
    <img src="/img/icon/pizza.png" alt="" style="width: 30px; height: 30px">  <span class="nav_name"></pan> 
      <h2 class="lead"></h2>
      <a href="/Menu/create" class="btn btn-primary " style="margin: 20px;">Tambah data</a>
      <?php if(session()->getFlashdata('pesan')) :?>
        <div class="alert alert-success" role="alert">
           <?= session()->getFlashdata('pesan'); ?>
         </div>
        <?php endif; ?>
      
      <?php foreach ($pizza as $p) : ?>
    <div class="card mb-3" style="max-width: 540px; border:10px solid white; justify-content: center;  border-radius: 10; "  >
  <div class="row g-0" style="background-color: blue; color: white;">
    <div class="col-md-4">
      
      <img src="/img/pizza/<?= $p['sampul']; ?>" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"></h5>

        <p class="card-text"><b><?= $p['nama']; ?></b></p>
        <p class="card-text"><small class="text-body-secondary"><b>RP.<?= $p['harga']; ?></b></small></p>
      

        <a href="/Menu/edit/<?= $p['id']; ?>" class="btn btn-warning">Edit</a>
        <form action="/Menu/<?= $p['id'];?>" method="post" class="d-inline">
       <?= csrf_field(); ?>
        <input type="hidden" name="_method" value="DELETE">
        <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin')">Delet</button>
      </form>
        
      <br><br>
      
      
      
      </div>
    </div>
  </div>
</div>
<?php endforeach; ?>
    </div>
  </div>
</div>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/TextPlugin.min.js"></script>
    <script>
      gsap.registerPluginAll(TextPlugin);
      gsap.to('.lead', {duration: 2, delay: 1.5, text: 'Pizza'})
    </script>
    
	

    </script>

<?= $this->endSection(); ?>