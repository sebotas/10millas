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

    <section id="contact-info">
        <div class="center">
            <h2>¿Cómo localizarnos?</h2>
            <p class="lead">Encuéntranos en Aqui...!!!</p>
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 text-center">
                        <div class="gmap">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3825.6156156835596!2d-68.14386102150728!3d-16.49498996233698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x915f20757f3a2a53%3A0x699dff90c6e95a89!2s10+Millas!5e0!3m2!1ses-419!2sbo!4v1511998440972" width="400" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>

                    <div class="col-sm-6 map-content">
                        <ul class="row">
                            <li class="col-sm-12">
                                <address>
                                    <h5>Tienda Principal</h5>
                                    <p>Av. Tumusla # 591<br>
                                    Galeria Ashai Local 2<br>
                                    frente al Hotel Tumusla</p>
                                    <p>Cel: 591-611-75782<br>
                                    Email: <a href="mailto:info@10millas.com" target="blank"><strong>info@10millas.com</strong></a><br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:10millas.novavitz@gmail.com" target="blank"><strong>10millas.novavitz@gmail.com</strong></a></p>
                                </address>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->

    <section id="contact-page">
        <div class="container">
            <div class="center">
                <h2>Su Mensaje</h2>
                <p class="lead">Formulario de Consulta</p>
            </div>
            <div class="row contact-wrap">
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="javascript:sendEmail('sendemail.php');">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Nombre *</label>
                            <input type="text" name="name" class="form-control" data-validation="required">
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="email" name="email" class="form-control" data-validation="required email">
                        </div>
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="tel" class="form-control" data-validation="number" data-validation-optional="true">
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Asunto *</label>
                            <input type="text" name="subject" class="form-control" data-validation="required">
                        </div>
                        <div class="form-group">
                            <label>Mensaje *</label>
                            <textarea name="message" id="message" class="form-control" rows="8" data-validation="required"></textarea>
                        </div>
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" >Enviar Mensaje</button>
                        </div>
                    </div>
                </form>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <?php
                include 'inc/footer.php';
            ?>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('#cont').addClass('active');
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script type="text/javascript" src="admin/assets/js/jquery.form-validator.js"></script>
    <script type="text/javascript" src="admin/assets/js/jquery.json-2.3.js"></script>
    <script type="text/javascript">
        $(document).ready(function(e){
            $.validate({
              lang: 'es',
              modules : 'security, modules/logic'
            });
        })
    </script>
</body>
</html>