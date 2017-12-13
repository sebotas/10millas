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
               <p class="lead">Calidad y Tecnologia Europea en Ropa Deportiva</p>
            </div>


            <ul class="portfolio-filter text-center">
                <li><a class="btn btn-default active" href="#" data-filter="*">Todos</a></li>
                <?php
                    $strSql = "SELECT * FROM categoria ORDER BY (id_categoria) DESC";
                    $sql = $db->EXecute($strSql);

                    while ($cat = $sql->FetchRow()) {
                ?>
                <li><a class="btn btn-default" href="#" data-filter=".<?=$cat['id_categoria']?>"><?=$cat['name'];?></a></li>
                <?php
                    }
                ?>
            </ul><!--/#portfolio-filter-->

            <div class="row">
                <div class="portfolio-items">
                    <?php
                    $strQuery = "SELECT p.name AS nombre, p.detail, p.id_producto, c.id_categoria FROM producto AS p, categoria AS c WHERE p.id_categoria = c.id_categoria ORDER BY (p.id_producto) DESC LIMIT 8";
                    $sqlQuery = $db->EXecute($strQuery);

                    while ($row = $sqlQuery->FetchRow()) {
                ?>
                    <div class="portfolio-item <?=$row['id_categoria']?> col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <?php
                            $imgQuery = "SELECT name FROM foto WHERE id_producto = '".$row['id_producto']."' ";
                            $sqlImg = $db->EXecute($imgQuery);

                           $reg = $sqlImg->FetchRow();
                            ?>
                            <img class="img-responsive thumb" src="admin/thumb/phpThumb.php?src=../modulo/producto/uploads/files/<?=$reg['name'];?>&amp;w=600&amp;h=455&amp;far=1&amp;bg=FFFFFF&amp;hash=361c2f150d825e79283a1dcc44502a76" alt="<?=$reg['name'];?>">

                            <div class="overlay">
                                <div class="recent-work-inner">
                                <h3><?=$row['nombre'];?></h3>
                                <div>
                                    <?=$op->getSubString($row['detail'], 90)?>
                                </div>

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
        $('#prod').addClass('active');
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/lightbox.min.js"></script>
    <script type="text/javascript">
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
