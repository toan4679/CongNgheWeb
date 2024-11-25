<?php include 'header.php'; ?>
<?php
include 'products.php';
if (isset($_POST['add'])) {
    $imagePath = '';
    if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
        $target_dir = "img/";
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
        $target_dir = "img/";
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

if (isset($_POST['delete'])) {
    $id = $_POST['id'];
    unset($products[$id]);
    $products = array_values($products);
    file_put_contents('products.php', "<?php\n\$products = " . var_export($products, true) . ";");
}
?>



<main>
    <div class="table-title">
        <div class="row ">
            <div class="col-sm-6 addButton">
                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                        class="material-icons">&#xE147;</i> <span>Thêm mới</span></a>

            </div>
        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>
                    <span class="custom-checkbox">
                        <input type="checkbox" id="selectAll">
                        <label for="selectAll"></label>
                    </span>
                </th>
                <th>Sản Phẩm</th>
                <th>Ảnh</th>
                <th>Giá thành</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if (empty($products)): ?>
                <tr>
                    <td colspan="4">Không có sản phẩm nào.</td>
                </tr>
            <?php else: ?>
                <?php foreach ($products as $index => $product): ?>
                    <tr>
                        <td><?= $index + 1?></td>
                        <td><?= htmlspecialchars($product['name']) ?></td>
                        <td><img src="<?= htmlspecialchars($product['image']) ?>" alt="Ảnh sản phẩm" style="width: 100px; height: auto;"></td>

                        <td><?= htmlspecialchars($product['price']) ?> VND</td>
                        <td>
                            <a href="#editEmployeeModal" class="edit" data-id="<?= $index ?>" data-name="<?= htmlspecialchars($product['name']) ?>" data-price="<?= htmlspecialchars($product['price']) ?>" data-toggle="modal">
                                <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                            </a>
                            <a href="#deleteEmployeeModal" class="delete" data-id="<?= $index ?>" data-toggle="modal">
                                <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                            </a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
        <!-- Add Product Modal -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="POST" enctype="multipart/form-data">
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input type="text" name="name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá thành</label>
                                <input type="number" name="price" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Ảnh sản phẩm</label>
                                <input type="file" name="image" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                            <input type="submit" name="add" class="btn btn-success" value="Thêm">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Edit Product Modal -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="POST" enctype="multipart/form-data">
                        <div class="modal-header">
                            <h4 class="modal-title">Sửa sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="id" id="edit-id">
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input type="text" name="name" id="edit-name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá thành</label>
                                <input type="number" name="price" id="edit-price" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Ảnh sản phẩm</label>
                                <input type="file" name="image" class="form-control">
                                <img src="<?= htmlspecialchars($product['image']) ?>" alt="Ảnh sản phẩm" style="width: 100px; height: auto;">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                            <input type="submit" name="edit" class="btn btn-info" value="Lưu">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <!-- Delete -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="POST">
                        <input type="hidden" name="id" id="delete-id">
                        <div class="modal-header">
                            <h4 class="modal-title">Xóa sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn có chắc muốn xóa sản phẩm này?</p>
                            <p class="text-warning"><small>Hành động này không thể hoàn tác.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                            <input type="submit" name="delete" class="btn btn-danger" value="Xóa">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script>
            $(document).on("click", ".edit", function() {
                var id = $(this).data("id");
                var name = $(this).data("name");
                var price = $(this).data("price");
                var image = $(this).data("image");


                $("#edit-id").val(id);
                $("#edit-name").val(name);
                $("#edit-price").val(price);
                $("#edit-image").val(image);

            });

            $(document).on("click", ".delete", function() {
                var id = $(this).data("id");
                $("#delete-id").val(id);
            });
        </script>

    </table>
</main>
<?php include 'footer.php'; ?>