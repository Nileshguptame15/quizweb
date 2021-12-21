<?php
session_start(); //Session variables hold information about one single user, and are available to all pages in one application.
if(!isset($_SESSION["username"])){
    ?>
    <script type="text/javascript">

        window.location="login.php";

    </script>
    <?php
}
?>
<?php
include "connection.php";
include "header.php";
?>
        <div class="row" style="margin: 0px; padding:0px; margin-bottom: 50px;">

            <div class="col-lg-6 col-lg-push-3" style="min-height: 500px; background-color: white;">
                
                <?php
                    $res=mysqli_query($link, "select * from exam_category");
                    while($row=mysqli_fetch_array($res))
                    {
                        ?>

                        <input type="button" class="btn btn-success form-control" value="<?php echo $row["category"]; ?>" style="margin-top: 10px; background-color: blue; color: white;" onclick="set_exam_type_session(this.value)">

                        <?php
                    } 
                    
                ?>

            </div>

        </div>
<?php
include "footer.php";
?>

<script type="text/javascript">
    function set_exam_type_session(exam_category)
    {
        var xmlhttp=new XMLHttpRequest();//a built-in XMLHttpRequest object to request data from a server.//property defines a function to be executed when the readyState changes
        xmlhttp.onreadystatechange=function() 
        {
            if(xmlhttp.readyState==4 && xmlhttp.status==200)//4==	DONE	The operation is complete. 3 == LOADING	Downloading; responseText holds partial data.
            {
                window.location="dashboard.php";
            }
        };
        xmlhttp.open("GET", "forajax/set_exam_type_session.php?exam_category="+exam_category, true);//XMLHttpRequest.open(method, url[, async[, user[, password]]])
        xmlhttp.send(null);
    }
</script>



        