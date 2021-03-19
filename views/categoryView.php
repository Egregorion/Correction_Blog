<?php include 'views/partials/header.php'; ?>

<div class="container">
    <h1 class="text-center"><?php echo $article_category['name']; ?></h1>
    <div class="row align-items-end">
        <?php foreach($category_articles as $article) { ?>
        <div class="col-4 mb-3">
            <div class="card">
                <img src="<?php echo $article['image']; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $article['title']; ?></h5>
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