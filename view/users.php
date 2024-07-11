<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <a href="../test">Back</a>
    <h1>Users</h1>
    <ul>
        <?php foreach ($users as $user): ?>
            <li><?php echo htmlspecialchars($user->name); ?></li>
        <?php endforeach; ?>
    </ul>
</body>
</html>