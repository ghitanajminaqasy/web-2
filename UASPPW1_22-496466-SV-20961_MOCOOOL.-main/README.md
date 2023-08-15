# UASPPW1_22-496466-SV-20961_MOCOOOL.

# Nama Mahasiswa
Ghita Najmi Naqasy-22_496466_SV_20961

#

# PENJELASAN
Mocool Tennis Club
Mocool adalah sebuah website yang mewadahi bagi para pecinta Tennis untuk nantinya berkumpul, bermain, belajar dan berbagi. Club ini terbuka untuk umum dari semua kalangan yang memiliki hobi dan minat di bidang olahraga Tennis. Pada website ini calon atlet dapat mengetahui informasi yang dibutuhkan seperti jenis program latihan sehingga dapat memilih program yang tepat sesuai kemampuan, jadwal latihan juga informasi mengenai pelatih yang tentunya sudah berpengalaman. Dengan adanya website ini diharapkan dapat membantu masyarakat yang ingin menjadi atlet tenis lapangan atau sekedar ingin menyalurkan hobi.

#

# DESIGN RAPI
Tampilan design pada website ini saya menggunakan color pellete, typography dan spacing yang konsisten juga pemilihan warna pastel yang sering dikaitkan dengan warna kelembutan, ketenangan, juga romantisme.  berikut adalah kode css:

:root {
  --ocean: hsl(162, 100%, 91%);
  --raisin-black-1: hsl(244, 17%, 19%);
  --majorelle-blue: hsl(245, 67%, 59%);
  --ghost-white-1: hsl(240, 100%, 99%);
  --oldgreen: hsl(133, 76%, 26%);
  --white-opacity: hsla(0, 0%, 100%, 0.5);
  --independence: hsl(245, 17%, 27%);
  --lavender-web: hsl(247, 69%, 95%);
  --eerie-black: hsl(210, 11%, 15%);
  --cool-gray: hsl(244, 17%, 61%);
  --yellow: hsl(65, 100%, 90%);
  --green: hsl(116, 41%, 72%);

  --ff-quicksand: "Quicksand", sans-serif;
  --ff-mulish: "Mulish", sans-serif;

  --fs-1: 36px;
  --fs-2: 28px;
  --fs-3: 20px;
  --fs-4: 17px;
  --fs-5: 16px;
  --fs-6: 15px;
  --fs-7: 14px;

  --fw-500: 500;
  --fw-600: 600;
  --fw-700: 700;

  --transition: 0.25s ease;

  --section-padding: 80px;

}






![screencapture-localhost-GNN-index-php-2023-06-22-14_44_31](https://github.com/ghitanajminaqasy/UASPPW1_22-496466-SV-20961_MOCOOOL./assets/132932051/dd070eb0-bcc3-4cb1-85fb-939f6f904468)

#

# WEB RESPONSIVE
Tampilan web responsive pada desktop, handphone dan tablet 

<img width="947" alt="home2" src="https://github.com/ghitanajminaqasy/UASPPW1_22-496466-SV-20961_MOCOOOL./assets/132932051/58922b6b-c353-4d6e-ac88-5816f75569fd">

<img width="467" alt="hp" src="https://github.com/ghitanajminaqasy/UASPPW1_22-496466-SV-20961_MOCOOOL./assets/132932051/8181565f-8342-439b-a57e-c0b11e0c5c63">

<img width="464" alt="tablet2" src="https://github.com/ghitanajminaqasy/UASPPW1_22-496466-SV-20961_MOCOOOL./assets/132932051/8f8b8c06-bf15-40fa-beae-07a614b1aa42">

Dengan kode header:

  <!-- 
    - HEADER
  -->

  <header class="header" data-header>
    <div class="container">

      <a href="#" class="logo">
        <img src="./assets/images/logo-mocool-1.png" width="150" height="40" alt="logo">
      </a>

      <button class="menu-toggle-btn" data-nav-toggle-btn>
        <ion-icon name="menu-outline"></ion-icon>
      </button>

      <nav class="navbar">
        <ul class="navbar-list">

          <li>
            <a href="#hero" class="navbar-link">Home</a>
          </li>

          <li>
            <a href="#features" class="navbar-link">Lapangan</a>
          </li>

          <li>
            <a href="#" class="navbar-link">Daftar</a>
          </li>

          <li>
            <a href="#blog" class="navbar-link">Coach</a>
          </li>

          <li>
            <a href="#contact" class="navbar-link">Contact Us</a>
          </li>

        </ul>

        <div class="header-actions">
          <a href="signup.php" class="header-action-link">Sign up</a>
        </div>
      </nav>

    </div>
  </header>

#

# DIRECT FEEDBACK
Sign up form
User diarakan ke halaman sign up untuk mendaftar apabila berminat menjadi anggota club, pada halaman sign up akan diminta untuk menginputkan username berserta password sehingga adanya interaksi antara pengguna dengan website yang nantinya akan disimpan. 
Berikut kode php : <?php
require 'koneksi.php';
if(isset($_POST['submit'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

    mysqli_query($conn, "INSERT INTO user VALUES('$username','$password')");
    return mysqli_affected_rows($conn);

    header("Location: login.php");
    exit();

}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGN UP</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    <script>
        var sambutan = alert("Thank you for intending to join us!")
    </script>
</head>
<body style="background-image: url(background-sign-1.jpeg); background-size:cover;">
    <!-- HEADERS -->
    <div class="headers">
        <div class="d-flex sticky-top container-fluid px-0">
            <div class="dropdown">
     
                <script>
                    var peringatan = document.getElementById("myButton").addEventListener("click", function() {
                        alert("Sorry, you don't have any access!");
                    });
                </script>

            </div>
            <h1 class="text-center py-3">MOCOOL</h1>
        </div>
    </div>
        

    <!-- Login -->
    <div class="Logins p-0 m-0">
        <div class="container p-3 rounded-5">
            <h3 class="pt-0 m-3 text-white fw-light text-center">Log in</h3>
            <form action="" method="POST" onsubmit="return validateForm()">
                <input type="text" name="username" id="uname" placeholder="Username" class="m-3 p-3 py-1 rounded-4 bg-black">
                <br>
                <input type="password" name="password" id="pass" placeholder="Password" class="mx-3 mt-3 p-3 py-1 rounded-4 bg-black">
                <br>
                <div class="text-center">
                    <button type="submit" class="mx-3 mt-3 mb-0 p-1 rounded-5 fw-bolder" value="Submit" name="submit">Submit</button>
                </div>                
            </form>
            
Kode JavaScript:
<script>
                function validateForm() {
                    var uname = document.getElementById("uname").value;
                    var pass = document.getElementById("pass").value;
                    
                    if (uname.trim() === "") {
                        alert("You have not entered your username!");
                        return false; 
                    }
                    
                    if (pass.trim() === "") {
                        alert("You have not entered your password!");
                        return false; 
                    }
                    
                    return true;
                }  
            </script>

        </div>
    </div>
</body>
</html>

Kode JavaScript:
'use strict';

const navToggleBtn = document.querySelector("[data-nav-toggle-btn]");
const header = document.querySelector("[data-header]");

navToggleBtn.addEventListener("click", function () {
  header.classList.toggle("active");
});

<img width="960" alt="ss-back" src="https://github.com/ghitanajminaqasy/UASPPW1_22-496466-SV-20961_MOCOOOL./assets/132932051/8f5603e9-b029-4b6f-9e45-aaa33a2adbb3">

#

# KONTEN DINAMIS
Setelah user menginputkan username berserta password akan disimpan ke dalam database.
<?php
require 'koneksi.php';
if(isset($_POST['submit'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

    mysqli_query($conn, "INSERT INTO user VALUES('$username','$password')");
    return mysqli_affected_rows($conn);

    header("Location: login.php");
    exit();

}

?>
<img width="503" alt="ss-sign" src="https://github.com/ghitanajminaqasy/UASPPW1_22-496466-SV-20961_MOCOOOL./assets/132932051/5ecdf638-a32d-463b-93f6-a5ee98d30306">
