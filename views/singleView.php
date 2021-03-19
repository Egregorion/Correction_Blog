<?php include 'partials/header.php';?>

    <div class="banner">
        <img class="img-fluid" src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>">
    </div>
    <div class="container">
        <div class="up">
            <h1 class="text-center"><?php echo $article['title']; ?></h1>
            <h3><a href="author.php?id=<?php echo $author['id']; ?>"><?php echo $author['pseudo']; ?></a></h3>
            <?php foreach($categories as $category){ ?>
                <span class="badge badge-pill badge-info"><a href="category.php?id=<?php echo $category['id']; ?>"><?php echo $category['name'];?></a></span>
            <?php } ?>
            <div>
                <?php echo $article['content']; ?>
            </div>
        </div>
    </div>

<?php include 'partials/footer.php'; ?>
