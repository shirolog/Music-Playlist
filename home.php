<?php 
require('./connect.php');
session_start();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <!-- custom css -->
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
    
<!-- playlist section -->
<section class="playlist">

    <h3 class="heading">music playlist</h3>

    <div class="box-container">
        <?php 
        $select_songs = $conn->prepare("SELECT * FROM `songs`");
        $select_songs->execute();
        if($select_songs->rowCount() > 0){
            while($fetch_songs = $select_songs->fetch(PDO::FETCH_ASSOC)){

        ?>
        <div class="box">
            <?php if($fetch_songs['album'] != ''){
             ?>
                <img src="./assets/uploaded_album/<?= $fetch_songs['album']; ?>" alt="" class="album">
            <?php 
            }else{
            ?>
                <img src="./assets/images/disc.png" alt="" class="album">
            <?php 
            }            
            ?>
            <div class="name"><?= $fetch_songs['name']; ?></div>
            <div class="artist"><?= $fetch_songs['artist']; ?></div>
            <div class="flex">
                <div class="play" data-src="./assets/uploaded_music/<?=$fetch_songs['music'] ?>">
                <i class="fas fa-play"></i><span>play</span></div>
                <a href="./assets/uploaded_music/<?= $fetch_songs['music']; ?>" 
                download=""><i class="fas fa-download"></i> <span>download</span></a>
            </div>

        </div>
    <?php         
    }
    }
    ?>

    <div class="box more-btn">
        <a href="./upload_music.php" class="btn">upload music</a>
    </div>
    </div>

</section>


<div class="music-player">

    <i class="fas fa-times" id="close"></i>

    <div class="box">
        <img src="" class="album" alt="">
        <div class="name"></div>
        <div class="artist"></div>
        <audio src="" class="music" controls></audio>
    </div>
</div>


<!-- custom js -->
<script src="./assets/js/app.js"></script>
</body>
</html>