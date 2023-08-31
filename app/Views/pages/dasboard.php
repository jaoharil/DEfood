<?= $this->extend('layouts/template'); ?>


<?= $this->section('content'); ?>

<style>
  body{
    background-image: url("/img/bg/home.jpg");
    padding: 40px;
  }
  .menu-box {
  
  background-color: #0c6efd;
  border-radius: 10px;
  height: 250px;
  transform-style: preserve-3d;
  display: flex;
  justify-content: center;
  align-items: center;
}

.menu-box::before {
  content: 'Menu';
  position: absolute;
  color: #fff;
  font-size: 6em;
  font-weight: bold;
  font-style: italic;
  top: 30px;
  left: 50%;
  transform: translate(-50%, 0);
  opacity: 0;
  transition: 0.5s;
}

.menu-box:hover::before {
  opacity: 0.2;
}

.menu-box::after {
  content: 'Defood';
  position: absolute;
  color: #fff;
  font-size: 4.3em;
  font-weight: bold;
  font-style: italic;
  top: 150px;
  left: 50%;
  transform: translate(-50%, 0);
  opacity: 0;
  transition: 0.5s;
}

.menu-box:hover::after {
  opacity: 0.2;
}

.menu-name {
  position: absolute;
  top: 0;
  width: 100%;
  color: #fff;
  text-align: center;
  font-size: 2em;
  opacity: 0;
  transform: translate3d(0, 0, 50px);
  transition: 0.5s;
}

.menu-box:hover .menu-name {
  top: 20px;
  opacity: 1;
}

.menu-detail-button {
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translate3d(-50%, 0, 100px);
  opacity: 0;
  transition: 0.5s;
  z-index: 3;
}

.menu-box:hover .menu-detail-button {
  opacity: 1;
  bottom: 20px;
}

.menu {
  position: relative;
  top: 52px;
  left: 50px;
  
  transform: translate3d(-50%, -52%, 80px);
  max-width: 130px;
  transition: 0.5s;
  z-index: 2;
}

.menu-box:hover .menu {
  transform: translate3d(-50%, -52%, 100px) rotate(5deg) scale(1.2);
}

  
</style>

<section id="menu">
        <div class="container">
          <div class="row text-center mb-3">
            <div class="col">
              <h2>Menu</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="menu-box">
                <h4 class="menu-name">Pizza</h4>
                <img src="/img/icon/pizza.png" alt="pizza" class="menu" />
                <a href="/Menu/pizza" class="btn btn-light menu-detail-button">Show Details</a>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="menu-box">
                <h4 class="menu-name">Hamburger</h4>
                <img src="/img/icon/hamburger.png" alt="hamburger" class="menu" />
                <a href="/Hamburger/index" class="btn btn-light menu-detail-button">Show Details</a>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="menu-box">
                <h4 class="menu-name">Drink</h4>
                <img src="/img/icon/drink.png" alt="drink" class="menu" />
                <a href="/Drink/index" class="btn btn-light menu-detail-button">Show Details</a>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="menu-box">
                <h4 class="menu-name">Frenc Frires</h4>
                <img src="/img/icon/french-fries.png" alt="Frenc Frires" class="menu" />
                <a href="#" class="btn btn-light menu-detail-button">Show Details</a>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="menu-box">
                <h4 class="menu-name">Donat</h4>
                <img src="/img/icon/donut.png" alt="donat" class="menu" />
                <a href="#" class="btn btn-light menu-detail-button">Show Details</a>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="menu-box">
                <h4 class="menu-name">Fast food</h4>
                <img src="/img/icon/fast-food.png" alt="fast-food" class="menu" />
                <a href="#" class="btn btn-light menu-detail-button">Show Details</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <script type="text/javascript" src="/js/vanilla-tilt.min.js"></script>
      <script type="text/javascript">
           VanillaTilt.init(document.querySelector(".your-element"), {
		       max: 35,
		       speed: 1000,
           glare: true,
	});
      
    </script>
    
<?= $this->endSection(); ?>
    