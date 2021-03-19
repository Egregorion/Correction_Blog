<?php include 'partials/header.php'; ?>

<div class="container">
    <form action="" method="post" enctype="multipart/form-data">
        <div>
            <label for="titre">Titre de l'article</label>
            <input class="form-control" type="text" name="title" id="titre">
        </div>
        <div>
            <label for="image">Image à la une</label>
            <input class="form-control" type="file" name="image" id="image">
        </div>
        <div>
            <label for="content">Contenu de l'article</label>
            <textarea class="form-control" name="content" id="content" cols="30" rows="10"></textarea>
        </div>
        <?php foreach($categoriesList as $category){?>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck<?php echo $category['id']; ?>" name="cat_<?php echo $category['name']; ?>">
            <label class="form-check-label" for="exampleCheck<?php echo $category['id'] ?>"><?php echo $category['name']; ?></label>
        </div>
        <?php } ?>
        <input type="submit" value="Envoyer">
    </form>

</div>

<?php include 'partials/footer.php'; ?>