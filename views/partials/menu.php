<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Mon super blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <?php 
        $categoriesList = getAllCategories(); 
        foreach($categoriesList as $category){ ?>
            <a class="dropdown-item" href="category.php?id=<?php echo $category['id']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        </div>
      </li>
    </ul>
  </div>
  <div class="items-align-right">
    <?php 
    if(isset($_SESSION['user'])&& !empty($_SESSION['user'])){ ?>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <span>Bonjour <?php echo $_SESSION['user']['nickname'] ;?></span>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="logout.php">Log Out</a>
        </li>
    </ul>
    <?php }else{ ?>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="login.php">Sign in</a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="register.php">Sign up</a>
        </li>
    </ul>
    <?php } ?>
  </div>
</nav>