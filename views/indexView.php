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
    <div class="row align-items-end">
        <?php foreach($articles as $article) { 
        $categories = getArticleCategoriesById($article['id']); ?>
        <div class="col-4 mb-3">
            <div class="card">
                <img src="<?php echo $article['image']; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $article['title']; ?></h5>
                    <?php foreach($categories as $category){ ?>
                        <span class="badge badge-pill badge-info"><a href="category.php?id=<?php echo $category['id']; ?>"><?php echo $category['name'];?></a></span>
                    <?php } ?>
                    <div class="mt-2">
                        <a href="single.php?id=<?php echo $article['id']; ?>" class="btn btn-primary">More</a>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>   
    </div>
</div>

<?php include 'views/partials/footer.php'; ?>