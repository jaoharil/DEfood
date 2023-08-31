
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DEfood</title>
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
 <style>
  body{
    padding: 0;
    margin: 0;
    
    background-image: url("/img/bg/home.jpg");
  }
  .container{
    width: 300px;
    height: 200px;
    margin: 200px auto;
   background-color: teal;
    border-radius: 20px;
    
  }
  .col span{
    color: darkviolet;
  }
  .col button{
    width: 70px;
    height: 30px;
    border-radius: 20px;
    background-color: dodgerblue;
    color: white;
    margin: 20px 150px auto;
  }
  .col p{
    color: white;
  }
  .col h1{
    color: gold;
  }
  
 </style>
<body>
  


 <div class="container" data-aos="fade-right"
     data-aos-offset="300"
     data-aos-easing="ease-in-sine">
  <div class="row">
    <div class="col" data-aos="flip-right" data-aos-delay="500">
    <h1><b>DE<span>food</span></b></h1>
    <p class="lead"></p>
    <button  type="button">
    <a href="/Home/dasboard" class="nav_link">  <span class="nav_name">Go</span> </a></button>
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
      gsap.registerPlugin(TextPlugin);
      gsap.to('.lead', {duration: 2, delay: 1.5, text: 'Selamat datang dan selamat berbelanja'})
    </script>
 </body>
   

    </html>