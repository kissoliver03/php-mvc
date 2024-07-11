<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <a href="../test">Back</a>
    <h1>Advertisements</h1>
    <ul>
        <?php foreach($advertisements as $advertisement):?>
            <li>
                <?php echo htmlspecialchars($advertisement->title); ?>
                <span><?php echo htmlspecialchars($advertisement->user_name); ?></span>
            </li>
        <?php endforeach;?>
    </ul>
</body>
</html>