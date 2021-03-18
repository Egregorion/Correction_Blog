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
</div>

<?php include 'views/partials/footer.php'; ?>