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

    <section id="portfolio">
        <div class="container">
            <div class="center">
               <h2>Nuestros Productos</h2>
               <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
            </div>


            <ul class="portfolio-filter text-center">
                <li><a class="btn btn-default active" href="#" data-filter="*">Todos</a></li>
                <?php
                    $strSql = "SELECT * FROM categoria ORDER BY (id_categoria) DESC";
                    $sql = $db->EXecute($strSql);

                    while ($row = $sql->FetchRow()) {
                ?>
                <li><a class="btn btn-default" href="#" data-filter=".<?=$row['id_categoria']?>"><?=$row['name'];?></a></li>
                <?php
                    }
                ?>
            </ul><!--/#portfolio-filter-->

            <div class="row">
                <div class="portfolio-items">
                    <?php
                        $strQuery = "SELECT f.name, p.name AS nombre, p.detail, c.id_categoria FROM producto AS p, foto AS f, categoria AS c WHERE p.id_producto = f.id_producto AND p.id_categoria = c.id_categoria ORDER BY (p.id_producto) DESC ";
                        $sqlQuery = $db->EXecute($strQuery);

                        while ($row = $sqlQuery->FetchRow()) {
                    ?>
                    <div class="portfolio-item <?=$row['id_categoria']?> col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive thumb" src="admin/thumb/phpThumb.php?src=../modulo/producto/uploads/files/<?=$row['name'];?>&amp;w=600&amp;h=455&amp;far=1&amp;bg=FFFFFF&amp;hash=361c2f150d825e79283a1dcc44502a76" alt="<?=$row['name'];?>">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><?=$row['nombre'];?></h3>
                                    <p><?=$row['detail'];?></p>
                                    <a class="preview" href="admin/modulo/producto/uploads/files/<?=$row['name'];?>" rel="prettyPhoto"><i class="fa fa-eye"></i> Ver</a>
                                </div>
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->
                    <?php
                        }
                    ?>
                </div>
            </div>
        </div>
    </section><!--/#portfolio-item-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <?php
                include 'inc/footer.php';
            ?>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('#prod').addClass('active');
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>
