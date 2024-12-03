<?php
class ProductModel {
    private $products = [];

    public function __construct() {
        if (file_exists(__DIR__ . '/products.php')) {
            include __DIR__ . '/products.php';
            $this->products = $products; 
        } else {
            $this->products = [];
        }
    }

    public function getAllProducts() {
        return $this->products;
    }

    public function addProduct($name, $price, $imagePath) {
        $this->products[] = [
            'name' => $name,
            'price' => $price,
            'image' => $imagePath
        ];
        $this->saveProducts();
    }

    public function editProduct($id, $name, $price, $imagePath) {
        $this->products[$id] = [
            'name' => $name,
            'price' => $price,
            'image' => $imagePath
        ];
        $this->saveProducts();
    }

    public function deleteProduct($id) {
        unset($this->products[$id]);
        $this->products = array_values($this->products);
        $this->saveProducts();
    }

    private function saveProducts() {
        file_put_contents('products.php', "<?php\n\$products = " . var_export($this->products, true) . ";");
    }
}
