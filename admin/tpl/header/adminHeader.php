<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- reset css -->
    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <!-- header css -->
    <link rel="stylesheet" href="./css/destyle.css">
    <link rel="stylesheet" href="./css/adHeader.css">
    
    <!-- main css -->
    <link rel="stylesheet" type="text/css" href="css/main.css">

    <!-- footer css -->
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <title><?= $const["title"] ?></title>
</head>

<body>
<header>
    <div id="header-width">
        <nav>
            <ul>
                <li><a href=""><img src="<?= $const["path_to_logo_image"] ?>" alt="HALMORTOR" width="300px"></a></li>
                <li class="mNav"><a href=""><?= $const["regist"] ?></a></li>
                <li class="mNav"><a href=""><?= $const["matter"] ?></a></li>
                <li class="mNav"><a href=""><?= $const["change"] ?></a></li>
            </ul>
        </nav>
        <p id="logOut"><a href=""><?= $const["log_out"] ?></a></p>
    </div>
</header>
<!-- header ここまで-->
