<!DOCTYPE html>
<html lang="es">
    <head>
        <?php include("estructura/head.php"); ?>
        <title>Productos Alimenticios Coeneo | Inicio</title>
    </head><!--/head-->
    <body>
    	<header id="header">      
            <?php 
                include("estructura/redes.php");
                include("estructura/menu.php");
             ?>            
        </header>
        <!--/#header-->
        <section id="home-slider">
            <div class="container">
                <div class="main-slider">
                    <div class="slide-text">
                        <h1>Productos Alimenticios Coeneo</h1>
                        <p>Somos una empresa especializada en la producción y venta de productos alimenticios.</p>
                    </div>
                    <img src="images/home/slider/slide1/sun.png" class="slider-sun" alt="slider image">
                </div>
            </div>
            <div class="preloader"><i class="fa fa-sun-o fa-spin"></i></div>
        </section>
        <!--/#home-slider-->

        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <div class="single-service">
                            <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                                <img src="images/home/mision.png" alt="">
                            </div>
                            <h2>Misión</h2>
                            <p>Elaborar Productos De Harina Y Maíz De La Más Alta Calidad Al Mejor Precio Que Satisfaga Las Necesidades Del Mercado, De Esta Forma, Pueda Gozar De Ricos Alimentos Con Nuestros Productos.</p>
                        </div>
                    </div>
                    <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="single-service">
                            <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="600ms">
                                <img src="images/home/vision.png" alt="">
                            </div>
                            <h2>Visión</h2>
                            <p>Posicionarnos En El Mercado Como La Mejor Opción En Productos De Harina Y Maíz, Esto Mediante El Mejoramiento Y La Innovación De Nuestros Productos  Siempre Basados En Nuestros Valores Como Empresa Familiar.</p>
                        </div>
                    </div>
                    <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="900ms">
                        <div class="single-service">
                            <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="900ms">
                                <img src="images/home/valores.png" alt="">
                            </div>
                            <h2>Valores</h2>
                            <p>Familia, trabajo en equipo, respeto, honestidad, tolerancia, paciencia y comunicación</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/#services-->
         <!--Modal-->
        <div class="modal fade" tabindex="-1" role="dialog" id="modal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Selecciona un idioma / Choose a language</h4>
              </div>
              <div class="modal-body">
                <a href="#" class="btn btn-primary btn-lg btn-block" data-dismiss="modal">Español</a>
                <a href="en/index.php" class="btn btn-default btn-lg btn-block">English</a>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <!--Fin Modal-->
        <section id="clients">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="clients text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                            <p><img src="images/home/clients.png" class="img-responsive" alt=""></p>
                            <h1 class="title">Nuestros Clientes</h1>
                            <p>Nuentra prioridad es brindar el mejor servicio al cliente.</p>
                        </div>
                        <div class="clients-logo wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="col-xs-3 col-sm-3">
                                <a href="https://www.facebook.com/pages/Abarrotes-Azteca/306324976096493?ref=ts&fref=ts"><img src="images/home/azteca.png" class="img-responsive" alt=""></a>
                            </div>
                            <div class="col-xs-3 col-sm-3">
                                <a href="http://codallos.com/"><img src="images/home/codallos.png" class="img-responsive" alt=""></a>
                            </div>
                             <div class="col-xs-3 col-sm-3">
                                <a href="http://www.lavioleta.com.mx/supervioleta/super.htm"><img src="images/home/violeta.png" class="img-responsive" alt=""></a>
                            </div>
                             <div class="col-xs-3 col-sm-3">
                                <a href="#"><img src="images/home/sunny.png" class="img-responsive" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </section>
        <!--/#clients-->

        <?php include("estructura/footer.php"); ?>
        <!--/#footer-->

        <?php include("estructura/scripts.php"); ?>
        
    </body>
</html>
