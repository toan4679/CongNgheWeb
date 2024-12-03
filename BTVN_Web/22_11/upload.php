<?php
    if (isset($_POST['add'])) {
        $imagePath = '';
        if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
            $target_dir = "uploads/";
            $target_file = $target_dir . basename($_FILES["image"]["name"]);
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                $imagePath = $target_file;
            }
        }
    
        $products[] = [
            'name' => $_POST['name'],
            'price' => $_POST['price'],
            'image' => $imagePath
        ];
    
        file_put_contents('products.php', "<?php\n\$products = " . var_export($products, true) . ";");
    }
    if (isset($_POST['edit'])) {
        $id = $_POST['id'];
        
        $imagePath = $products[$id]['image']; 
        if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
            $target_dir = "uploads/";
            $target_file = $target_dir . basename($_FILES["image"]["name"]);
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                $imagePath = $target_file;
            }
        }
    
        $products[$id] = [
            'name' => $_POST['name'],
            'price' => $_POST['price'],
            'image' => $imagePath
        ];
    
        file_put_contents('products.php', "<?php\n\$products = " . var_export($products, true) . ";");
    }
        
?>