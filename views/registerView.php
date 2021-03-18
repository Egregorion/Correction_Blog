<?php include 'views/partials/header.php'; ?>

<div class="container">
    <h1 class="text-center">Register</h1>
    <form action="" method="post">
        <div class="row">
            <div class="col-6">
                <label for="lastname">Lastname</label>
                <input class="form-control" type="text" name="lastname" id="lastname">
            </div>
            <div class="col-6">
                <label for="firstname">Firstname</label>
                <input class="form-control" type="text" name="firstname" id="firstname">
            </div>
            <div class="col-6">
                <label for="nickname">Nickname</label>
                <input class="form-control" type="text" name="nickname" id="nickname">
            </div>
            <div class="col-6">
                <label for="email">Email</label>
                <input class="form-control" type="email" name="email" id="email">
            </div>
            <div class="col-6">
                <label for="password">Password</label>
                <input class="form-control" type="password" name="password" id="password">
            </div>
        </div>
        <div class="text-center mt-2">
            <input class="btn btn-primary" type="submit">
        </div>   
    </form>
</div>

<?php include 'views/partials/footer.php'; ?>