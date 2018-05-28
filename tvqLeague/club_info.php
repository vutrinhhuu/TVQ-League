<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>TVQ League</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/prettyPhoto.css" />
<link rel="stylesheet" href="css/flexslider.css" />
<link rel="stylesheet" href="css/custom-styles.css">

<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="css/style-ie.css"/>
<![endif]--> 

<!-- Favicons
================================================== -->

<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- JS
================================================== -->
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/jquery.custom.js"></script>
<script type="text/javascript">
$(document).ready(function () {

    $("#btn-blog-next").click(function () {
      $('#blogCarousel').carousel('next')
    });
     $("#btn-blog-prev").click(function () {
      $('#blogCarousel').carousel('prev')
    });

     $("#btn-client-next").click(function () {
      $('#clientCarousel').carousel('next')
    });
     $("#btn-client-prev").click(function () {
      $('#clientCarousel').carousel('prev')
    });
    
});

 $(window).load(function(){

    $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        start: function(slider){
          $('body').removeClass('loading');
        }
    });  
});

</script>

</head>

<body class="home">
<?php
    include('config.php');
?>
    <!-- Color Bars (above header)-->
    <div class="color-bar-1"></div>
    <div class="color-bar-2 color-bg"></div>
    
    <div class="container">
    
      <div class="row header"><!-- Begin Header -->
      
        <!-- Logo
        ================================================== -->
        <div class="span4 logo">
            <a href="index.php"><h1>TVQ League</h1></a>
            
        </div>
        
        <!-- Main Navigation
        ================================================== -->
        <div class="span8 navigation">
            <div class="navbar hidden-phone">
            
            <ul class="nav">
            <li>
                <a href="index.php">Home</a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Results <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="results.php">Match results</a></li>
                    <li><a href="#">Top scored</a></li>
                </ul>
            </li>
           <li><a href="#">Fixtures</a></li>
           <li><a href="#">Table</a></li>
            <li class="active"><a href="club.php">Clubs</a></li>
            <li><a href="player.php">Players</a></li>
            <li><a href="all_manager.php">Managers</a></li>
            <li><a href="referee.php">Referees</a></li>
             <li><a href="#">Contact</a></li>

            <li><button class="btn" type="button">Sign in</button></li>
            </ul>

           
            </div>

            <!-- Mobile Nav
            ================================================== -->
            <form action="#" id="mobile-nav" class="visible-phone">
                <div class="mobile-nav-select">
                <select onchange="window.open(this.options[this.selectedIndex].value,'_top')">
                    <option value="">Navigate...</option>
                    <option value="index.htm">Home</option>
                        <option value="index.htm">- Full Page</option>
                        <option value="index-gallery.htm">- Gallery Only</option>
                        <option value="index-slider.htm">- Slider Only</option>
                    <option value="features.htm">Features</option>
                    <option value="page-full-width.htm">Pages</option>
                        <option value="page-full-width.htm">- Full Width</option>
                        <option value="page-right-sidebar.htm">- Right Sidebar</option>
                        <option value="page-left-sidebar.htm">- Left Sidebar</option>
                        <option value="page-double-sidebar.htm">- Double Sidebar</option>
                    <option value="gallery-4col.htm">Gallery</option>
                        <option value="gallery-3col.htm">- 3 Column</option>
                        <option value="gallery-4col.htm">- 4 Column</option>
                        <option value="gallery-6col.htm">- 6 Column</option>
                        <option value="gallery-4col-circle.htm">- Gallery 4 Col Round</option>
                        <option value="gallery-single.htm">- Gallery Single</option>
                    <option value="blog-style1.htm">Blog</option>
                        <option value="blog-style1.htm">- Blog Style 1</option>
                        <option value="blog-style2.htm">- Blog Style 2</option>
                        <option value="blog-style3.htm">- Blog Style 3</option>
                        <option value="blog-style4.htm">- Blog Style 4</option>
                        <option value="blog-single.htm">- Blog Single</option>
                    <option value="page-contact.htm">Contact</option>
                </select>
                </div>
                </form>

        </div>
            <div class="span8">
            </div>
                <div class="span4">
            <form class="form-search">
            <div class="input-append">
                <input type="text" class="span3 search-query" placeholder="Search for clubs or players">
                <button type="submit" class="btn"><i class="icon-search"></i></button>
            </form>

        </div>
        
      </div><!-- End Header -->
     


    <div class="span8 blog">
        <?php
        $sql_clb = "SELECT *
            FROM clb,svd,aodau
            WHERE  clb.MSCLB = '$_GET[id]' 
            AND svd.MSSVD = clb.MSSVD
            AND aodau.MSCLB = clb.MSCLB";
            $query = mysql_query($sql_clb);
    ?>
            <!-- Blog Post 1 -->
            <article class="clearfix">
                <?php
                    $clb = mysql_fetch_array($query)
                ?>
                <a href="#"><img src="img/bigLogo/<?php echo $clb['LOGO'] ?>" alt="Club" class="align-left"></a>
                <div class=span5>
                <h1 class="title-bg"><?php echo $clb['TENCLB'] ?></a></h1>
                    <p><i class="icon-map-marker"></i>Stadium: <?php echo $clb['TENSVD'] ?> </p>
                    <p><i class="icon-time"></i>Founded: <?php echo $clb['NAMTHANHLAP'] ?> </p>
                    <p><i class="icon-envelope"></i>Contact: <?php echo $clb['DIENTHOAI'] ?> </p>
                    <p><i class="icon-home"></i>Offical Website:<a href="<?php echo $clb['WEBSITE'] ?>"> <?php echo $clb['WEBSITE'] ?></a></p>
                    <div class="post-summary-footer">

                        <ul class="post-data-3">

                        </ul>
                    </div>
                </div>
            </article>

            <h4 class="title-bg"> Stadium Information </h4>
            <h5 align="center"><?php echo $clb['TENSVD'] ?> (<?php echo $clb['NAMXD'] ?>)</h5>
            <img src="img/stadium/<?php echo $clb['HINHANH'] ?>">
            <div class="row">
                <h6 align="center"> Capacity: <?php echo $clb['SUCCHUA'] ?> </h6>
            </div>



            <h4 class="title-bg"> Latest Club News </h4>

            <div class="row">
                <div class="span2">
                    <img src="img/kit/<?php echo $clb['AOSANNHA'] ?>" alt="Image" class="thumbnail">
                    <h6 align="center">Home Kit</h5>
                </div>
                <div class="span2">
                    <img src="img/kit/<?php echo $clb['AOSANKHACH'] ?>" alt="Image" class="thumbnail">
                    <h6 align="center">Away Kit</h5>
                </div>
                <div class="span2">
                    <img src="img/kit/<?php echo $clb['AOTHUBA'] ?>" alt="Image" class="thumbnail">
                    <h6 align="center">Third Kit</h5>
                </div>
                <div class="span2">
                    <img src="img/sponsor/<?php echo $clb['NHATAITRO'] ?>" alt="Image" class="thumbnail">
                    <h6 align="left"><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>Principal Partner</h5>
                </div>
            </div>


        </div>

         <div class="span4"><!-- Begin sidebar column -->
            <?php
            $sql_side = "SELECT lichthidau.*,trandau.*, DAYNAME(lichthidau.NGAYDAU) AS dayname, DAY(lichthidau.NGAYDAU) AS day, MONTHNAME(lichthidau.NGAYDAU) AS month, chu.LOGO AS chu, khach.LOGO AS khach
            FROM lichthidau, trandau, clb AS chu, clb AS khach
            WHERE lichthidau.MSTRANDAU = trandau.MSTRANDAU
            AND chu.MSCLB = lichthidau.MSCHU
            AND khach.MSCLB = lichthidau.MSKHACH
            AND lichthidau.MSCHU = '$_GET[id]' 
            UNION
            SELECT lichthidau.*,trandau.*, DAYNAME(lichthidau.NGAYDAU) AS dayname, DAY(lichthidau.NGAYDAU) AS day, MONTHNAME(lichthidau.NGAYDAU) AS month, chu.LOGO AS chu, khach.LOGO AS khach
            FROM lichthidau, trandau, clb AS chu, clb AS khach
            WHERE lichthidau.MSTRANDAU = trandau.MSTRANDAU
            AND chu.MSCLB = lichthidau.MSCHU
            AND khach.MSCLB = lichthidau.MSKHACH
            AND lichthidau.MSKHACH = '$_GET[id]' 
            ORDER BY NGAYDAU DESC ";
            $query = mysql_query($sql_side);
        ?>

            <!--Tabbed Content-->
            <div class="span4" ></div>
            <h4 class="title-bg">Results</h4>
                <?php
                    while($ketqua = mysql_fetch_array($query)) {
                ?>
                <div class="span2">
                    <h6>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $ketqua['dayname'] ?> <?php echo $ketqua['day']?> <?php echo $ketqua['month']?></h6>
                </div>
                <div class="span3">
                    <h5 class="title-bg">&emsp;&emsp;&emsp; <?php echo $ketqua['MSCHU']?>
                        <img src="img/bigLogo/<?php echo $ketqua['chu']?>" width="30px" height="30px"> 
                        &nbsp;&nbsp;&nbsp;&nbsp; <?php echo $ketqua['BANTHANGCHU']?>-<?php echo $ketqua['BANTHANGKHACH']?> &nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="img/bigLogo/<?php echo $ketqua['khach']?>" width="30px" height="30px"> <?php echo $ketqua['MSKHACH']?> 
                    </h5>
                </div>
                <?php
                }
                ?>         

            </div>
            <?php
            $sql_fixture = "SELECT lichthidau.*, DAYNAME(lichthidau.NGAYDAU) AS dayname, DAY(lichthidau.NGAYDAU) AS day, MONTHNAME(lichthidau.NGAYDAU) AS month, chu.LOGO AS chu, khach.LOGO AS khach, TIME_FORMAT(lichthidau.GIODAU, '%H:%i') AS time
            FROM lichthidau, clb AS chu, clb AS khach
            WHERE chu.MSCLB = lichthidau.MSCHU
            AND khach.MSCLB = lichthidau.MSKHACH
            AND lichthidau.GHICHU = ''
            AND lichthidau.MSCHU = '$_GET[id]'
            UNION
            SELECT lichthidau.*, DAYNAME(lichthidau.NGAYDAU) AS dayname, DAY(lichthidau.NGAYDAU) AS day, MONTHNAME(lichthidau.NGAYDAU) AS month, chu.LOGO AS chu, khach.LOGO AS khach, TIME_FORMAT(lichthidau.GIODAU, '%H:%i') AS time
            FROM lichthidau, clb AS chu, clb AS khach
            WHERE chu.MSCLB = lichthidau.MSCHU
            AND khach.MSCLB = lichthidau.MSKHACH
            AND lichthidau.GHICHU = ''
            AND lichthidau.MSKHACH = '$_GET[id]'
            ORDER BY NGAYDAU DESC ";
            $query = mysql_query($sql_fixture);
        ?>            

                <div class="span4">
                <h4 class="title-bg">Fixtures</h4>
                <?php
                    while($lich = mysql_fetch_array($query)) {
                ?>
                <div class="span2">
                    <h6>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $lich['dayname'] ?> <?php echo $lich['day']?> <?php echo $lich['month']?></h6>
                </div>
                <div class="span3">
                    <h5 class="title-bg">&emsp;&emsp;&emsp; <?php echo $lich['MSCHU'] ?>
                        <img src="img/bigLogo/<?php echo $lich['chu'] ?>" width="30px" height="30px"> 
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><b><?php echo $lich['time'] ?></b></a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="img/bigLogo/<?php echo $lich['khach'] ?>" width="30px" height="30px"> <?php echo $lich['MSKHACH'] ?> 
                    </h5>

                </div>
                <?php
                }
                ?>            
                </div>                 
        

        </div><!-- End sidebar column -->
            <?php
            $sql_squad = "SELECT *
            FROM cauthu, clb, quoctich
            WHERE cauthu.MSCLB = clb.MSCLB
            AND clb.MSCLB= '$_GET[id]' 
            AND cauthu.QUOCTICH = quoctich.QUOCTICH";
            $query = mysql_query($sql_squad);
        ?>
        <div class="span12 gallery"> <!-- Squad -->
            <h4 class="title-bg"> Squad </h4>

            <div class="row">
                <ul class="gallery-post-grid holder">
                    <?php
                        while($squad = mysql_fetch_array($query)) {
                    ?>
                    <!-- Gallery Item 1 -->
                    <li  class="span2 gallery-item" data-id="id-1" data-type="illustration">
                        <a href="player_detail.php?&id=<?php echo $squad['MSCAUTHU'] ?>"><img src="img/player/<?php echo $squad['HINHANH'] ?>" alt="Player"></a>
                        <span class="project-details"><a href="player_detail.php?&id=<?php echo $squad['MSCAUTHU'] ?>"><?php echo $squad['TENCAUTHU'] ?></a>Nationality: &ensp;<img src="img/nationality/<?php echo $squad['FLAG'] ?>" width="18px" height="27px"> </span>
                    </li>

                    <?php
                    }
                    ?>
                </ul>
            </div>


        </div><!-- End gallery list-->

    

    </div> <!-- End Container -->

    <!-- Footer Area
        ================================================== -->

    <div class="footer-container"><!-- Begin Footer -->
        <div class="container">
            
            <div class="row"><!-- Begin Sub Footer -->
                <div class="span12 footer-col footer-sub">
                    <div class="row no-margin">
                        <div class="span6"><span class="left">Copyright 2012 Piccolo Theme. All rights reserved.</span></div>
                        <div class="span6">
                            <span class="right">
                            <a href="#">Home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">Contact</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div><!-- End Sub Footer -->

        </div>
    </div><!-- End Footer --> 
    
    <!-- Scroll to Top -->  
    <div id="toTop" class="hidden-phone hidden-tablet">Back to Top</div>
    
</body>
</html>
