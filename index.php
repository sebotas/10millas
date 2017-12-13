<?php
    include 'admin/adodb5/adodb.inc.php';
    include 'admin/inc/function.php';

    $db = NewADOConnection('mysqli');
    //$db->debug = true;
    $db->Connect();

    $op = new cnFunction();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <?php
        include 'inc/head.php';
    ?>
</head><!--/head-->

<body class="homepage">

    <?php
        include 'inc/header.php';
    ?>

    <section class="no-margin">
        <div id="main-slider" class="carousel slide" data-ride="carousel">
            <div class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                    <li data-target="#main-slider" data-slide-to="1"></li>
                    <li data-target="#main-slider" data-slide-to="2"></li>
                    <li data-target="#main-slider" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active" style="background-image: url(images/slider/10millas.jpg)">
                        <div class="container">

                        </div>
                    </div><!--/.item-->

                    <div class="item" style="background-image: url(images/slider/bg1.jpg)">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Camisetas de la Liga Europea</h1>
                                        <h2 class="animation animated-item-2">Calidad y Tecnologia Europea en Ropa Deportiva...</h2>

                                    </div>
                                </div>

                                <div class="col-sm-6 animation animated-item-4">
                                    <div class="slider-img">
                                        <img src="images/slider/img1.png" class="img-responsive">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div><!--/.item-->

                    <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Camisetas de la liga Boliviana</h1>
                                        <h2 class="animation animated-item-2">Calidad y Tecnologia Europea en Ropa Deportiva...</h2>

                                    </div>
                                </div>

                                <div class="col-sm-6 animation animated-item-4">
                                    <div class="slider-img">
                                        <img src="images/slider/img2.png" class="img-responsive">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div><!--/.item-->

                    <div class="item" style="background-image: url(images/slider/bg3.jpg)">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Camisetas Oficiales del Mundial</h1>
                                        <h2 class="animation animated-item-2">Calidad y Tecnologia Europea en Ropa Deportiva...</h2>

                                    </div>
                                </div>
                                <div class="col-sm-6 animation animated-item-4">
                                    <div class="slider-img">
                                        <img src="images/slider/img3.png" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--/.item-->
                </div><!--/.carousel-inner-->
            </div><!--/.carousel-->
            <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
                <i class="fa fa-chevron-left"></i>
            </a>
            <a class="next hidden-xs" href="#main-slider" data-slide="next">
                <i class="fa fa-chevron-right"></i>
            </a>
        </div>
    </section><!--/#main-slider-->

    <section id="galleryVideo">
        <div class="center wow fadeInDown">
            <h2>Nuestros Videos</h2>
            <p class="lead">Nuestros videos demuestran la calidad de nuestros productos</p>
        </div>
            <div id="gallery" style="display:none;">
                <?php
                    $strSql = "SELECT * FROM video ORDER BY (id_video) DESC";
                    $sql = $db->EXecute($strSql);

                    while ($row = $sql->FetchRow()) {
                ?>
                <div data-type="youtube"
                    data-title="<?=$row['title'];?>"
                    data-description="<?=$row['detail'];?>"
                    data-thumb="http://img.youtube.com/vi/<?=$row['idVideo'];?>/0.jpg"
                    data-image="http://img.youtube.com/vi/<?=$row['idVideo'];?>/0.jpg"
                    data-videoid="<?=$row['idVideo'];?>" >
                </div>
                <?php
                    }
                ?>
        </div>
    </section>

    <section id="feature" >
        <div class="container">
            <div class="row">
                <div class="features">
                    <div class="col-md-6 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <img src="images/tab1.png" class="img-responsive">
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-6 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <img src="images/tab2.png" class="img-responsive">
                        </div>
                    </div><!--/.col-md-4-->

                </div><!--/.services-->
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#feature-->

    <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Productos Recientes</h2>
                <p class="lead"></p>
            </div>

            <div class="row">
                <?php
                    $strQuery = "SELECT name AS nombre, detail, id_producto FROM producto ORDER BY (id_producto) DESC LIMIT 8";
                    $sqlQuery = $db->EXecute($strQuery);

                    while ($row = $sqlQuery->FetchRow()) {
                ?>
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <?php
                            $imgQuery = "SELECT name FROM foto WHERE id_producto = '".$row['id_producto']."' ";
                            $sqlImg = $db->EXecute($imgQuery);

                          $reg = $sqlImg->FetchRow()
                        ?>
                        <img class="img-responsive thumb" src="admin/thumb/phpThumb.php?src=../modulo/producto/uploads/files/<?=$reg['name'];?>&amp;w=600&amp;h=455&amp;far=1&amp;bg=FFFFFF&amp;hash=361c2f150d825e79283a1dcc44502a76" alt="<?=$reg['name'];?>">
                        
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><?=$row['nombre'];?></h3>
                                <p><?=$row['detail'];?></p>

                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg"
                                <?php
                                    $c=0;
                                    $query = "SELECT name FROM foto WHERE id_producto = '".$row['id_producto']."' ";
                                    $strReg = $db->EXecute($query);

                                    while ($reg = $strReg->FetchRow()) {
                                ?>
                                    data-img<?=$c?>="<?=$reg['name']?>"
                                <?php
                                    $c++;
                                    }
                                    $c--;
                                ?>
                                    data-c = "<?=$c?>"
                                    data-id="<?=$row['id_producto']?>"
                                    data-name="<?=$row['nombre']?>"
                                    data-detail="<?=$row['detail']?>" >
                                    <i class="fa fa-eye"></i> Leer mas
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
                <?php
                    }
                ?>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#recent-works-->

    <section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <h2>Nuestro Servicio</h2>
                <p class="lead">Calidad y Tecnologia Europea en Ropa Deportiva</p>
            </div>

            <div class="row"><br><br><br><br><br>


            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->

    <!-- <section id="middle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 wow fadeInDown">
                    <div class="skill">
                        <h2>Our Skills</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

                        <div class="progress-wrap">
                            <h3>Graphic Design</h3>
                            <div class="progress">
                              <div class="progress-bar  color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                <span class="bar-width">85%</span>
                              </div>

                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>HTML</h3>
                            <div class="progress">
                              <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                               <span class="bar-width">95%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>CSS</h3>
                            <div class="progress">
                              <div class="progress-bar color3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="bar-width">80%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>Wordpress</h3>
                            <div class="progress">
                              <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                <span class="bar-width">90%</span>
                              </div>
                            </div>
                        </div>
                    </div>

                </div><!--/.col-sm-6-

                <div class="col-sm-6 wow fadeInDown">
                    <div class="accordion">
                        <h2>Why People like us?</h2>
                        <div class="panel-group" id="accordion1">
                          <div class="panel panel-default">
                            <div class="panel-heading active">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>

                            <div id="collapseOne1" class="panel-collapse collapse in">
                              <div class="panel-body">
                                  <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/accordion1.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>Adipisicing elit</h4>
                                             <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>
                                        </div>
                                  </div>
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseTwo1" class="panel-collapse collapse">
                              <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseThree1" class="panel-collapse collapse">
                              <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseFour1" class="panel-collapse collapse">
                              <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                              </div>
                            </div>
                          </div>
                        </div><!-/#accordion1-
                    </div>
                </div>

            </div><!-/.row-
        </div><!-/.container-
    </section> --><!--/#middle-->

    <section id="partner">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Nuestra Experiencia</h2>
                <p class="lead">Contamos con más de 10 años de experiencia en la distribución de ropa deportiva de alta calidad al por mayor y menor</p>
            </div>
        </div><!--/.container-->
    </section><!--/#partner-->

    <section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="pull-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h2>¿Tiene alguna pregunta o necesita un presupuesto personalizado?</h2>
                            <p>Comunique con nosotros al WhatsApp: +591 611-75782</p>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->
    </section><!--/#conatcat-info-->

    <!-- <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                </div><!-/.col-md-3-

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>
                </div><!-/.col-md-3-

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>
                </div><!-/.col-md-3-

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>
                </div><!-/.col-md-3-
            </div>
        </div>
    </section> --><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <?php
                include 'inc/footer.php';
            ?>
        </div>
    </footer><!--/#footer-->

    <!-- Large modal -->

    <div class="modal fade bs-example-modal-lg" id="detailPro" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Detalle</h4>
            </div>
                <div class="modal-body">
                    <div class="row">
                      <div class="col-md-6">
                        <div id="fotos" class="row">

                        </div>

                      </div>
                      <div class="col-md-6">
                        <h4 id="title"></h4>
                        <div id="detail">

                        </div>
                      </div>
                    </div>
                </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
      </div>
    </div>

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('#index').addClass('active');
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>

    <script type='text/javascript' src='unitegallery/js/unitegallery.js'></script>
    <link rel='stylesheet' href='unitegallery/css/unite-gallery.css' type='text/css' />
    <script type='text/javascript' src='unitegallery/themes/carousel/ug-theme-carousel.js'></script>
    <script type="text/javascript" src="js/lightbox.min.js"></script>

    <script>
        jQuery(document).ready(function($) {
            jQuery("#gallery").unitegallery({
                tile_height:150,
                tile_width: 200
            });
        });

        $('#detailPro').on('hidden.bs.modal', function (e) {

           // alert('entra');

        });

        $('#detailPro').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); // Botón que activó el modal
            var idp = button.data('id'); // Extraer la información de atributos de datos
            var title = button.data('name'); // Extraer la información de atributos de datos
            var detail = button.data('detail'); // Extraer la información de atributos de datos
            var c = button.data('c');

            var html = '';
            for (var i = 0; i <= c; i++) {
                var img = button.data('img'+i);
                html+= '<div class="col-xs-12 col-sm-4 col-md-6">';
                html+= '<div>';
                html+= '<a class="example-image-link" href="admin/modulo/producto/uploads/files/'+img+'" data-lightbox="example-set" >';
                html+= '<img class="img-responsive thumb" src="admin/thumb/phpThumb.php?src=../modulo/producto/uploads/files/'+img+'&amp;w=600&amp;h=455&amp;far=1&amp;bg=FFFFFF&amp;hash=361c2f150d825e79283a1dcc44502a76" alt="'+img+'">';
                html+= '</a>';
                html+= '</div>';
                html+= '</div>';
            }
            //var ff = <?=$idp?>;
            //alert(ff);
            var modal = $(this);
            modal.find('.modal-body #fotos').html(html);
            modal.find('.modal-body #title').html(title);
            modal.find('.modal-body #detail').html(detail);
            //alert('entra');
        });
    </script>
</body>
</html>
