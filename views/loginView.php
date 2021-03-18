<?php include 'views/partials/header.php'; ?>

<div class="container">
    <?php 
        if(isset($_GET) && !empty($_GET)){ ?>
            <div class="text-center alert alert-<?php echo $_GET['status']; ?>" role="alert">
                <?php echo $_GET['message']; ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php } 
    ?>

    <h1 class=text-center>Login</h1>
    <form action="" method="post">
        <div>
            <label for="email">Email</label>
            <input class="form-control" type="email" name="email" id="email">
        </div>
        <div>
            <label for="password">Password</label>
            <input class="form-control" type="password" name="password" id="password">
        </div>
        <div class="text-center">
            <input class="btn btn-primary mt-2" type="submit" value="Sign In">
        </div>
    </form>
</div>

<?php include 'views/partials/footer.php'; ?>