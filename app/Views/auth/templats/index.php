<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Custom fonts for this template-->
    <link href="<?= base_url(); ?>/register/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url(); ?>/register/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<style>
    .body{
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: blue;
    }
    .container{
        margin-top: 50px;
    }
    
</style>
<body class="bg-gradient-secondary">

    <?= $this->renderSection('content'); ?>

    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url(); ?>/register/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url(); ?>/register/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url(); ?>/register/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url(); ?>/register/js/sb-admin-2.min.js"></script>

</body>

</html>