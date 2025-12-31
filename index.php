<?php 
$page = $_GET['url'] ?? 'home';
echo $page;
if($page == "old"){
    header("Location: /home",true,301);
    exit();
}

switch($page) {
    case "home":
        include "home.php";
        break;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Welcome to Index Page</h1>
</body>
</html>