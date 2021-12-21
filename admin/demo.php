<?php
session_start();
include "header.php";
include "../connection.php";
if(!isset($_SESSION["admin"])){
    ?>
        <script type="text/javascript">
            window.location="index.php"
        </script>
    <?php
}
?>
<div class="breadcrumbs">
            <div class="col-sm-12">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <!-- Credit Card -->
                                

                            </div>
                        </div> <!-- .card -->

                    </div>
                    <!--/.col-->


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
<?php

include "footer.php";

?>