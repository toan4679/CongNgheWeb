<?php include 'header.php'; ?>
<?php
include 'flowers.php'; // Thay thế 'products.php' thành 'flowers.php'

if (isset($_POST['add'])) {
    $imgPaths = [];
    if (isset($_FILES['images'])) {
        $target_dir = "img/";
        foreach ($_FILES['images']['name'] as $key => $imageName) {
            if (!empty($imageName)) {
                $target_file = $target_dir . basename($imageName);
                if (move_uploaded_file($_FILES['images']['tmp_name'][$key], $target_file)) {
                    $imgPaths[] = $target_file;
                }
            }
        }
    }

    // Xác định ID lớn nhất hiện có và tăng thêm 1
    $maxId = 0;
    foreach ($flowers as $flower) {
        if (isset($flower['id']) && $flower['id'] > $maxId) {
            $maxId = $flower['id'];
        }
    }
    $newId = $maxId + 1;

    $flowers[] = [
        'id' => $newId,
        'name' => $_POST['name'],
        'des' => $_POST['description'],
        'img' => $imgPaths
    ];

    file_put_contents('flowers.php', "<?php\n\$flowers = " . var_export($flowers, true) . ";");
}




if (isset($_POST['edit'])) {
    $id = intval($_POST['id']); // Lấy ID cần sửa

    foreach ($flowers as $index => $flower) { // Dùng $index thay vì $key
        if ($flower['id'] === $id) { // Tìm phần tử có ID khớp
            $imgPaths = $flower['img']; // Giữ lại ảnh cũ
            if (isset($_FILES['images'])) {
                $target_dir = "img/";
                foreach ($_FILES['images']['name'] as $key => $imageName) { // Sử dụng $key cho $_FILES
                    if (!empty($imageName)) {
                        $target_file = $target_dir . basename($imageName);
                        if (move_uploaded_file($_FILES['images']['tmp_name'][$key], $target_file)) {
                            $imgPaths[$key] = $target_file; // Cập nhật ảnh
                        }
                    }
                }
            }

            // Cập nhật thông tin phần tử trong mảng
            $flowers[$index] = [
                'id' => $id,
                'name' => $_POST['name'],
                'des' => $_POST['description'],
                'img' => $imgPaths
            ];

            break; // Thoát khỏi vòng lặp sau khi tìm thấy phần tử
        }
    }

    file_put_contents('flowers.php', "<?php\n\$flowers = " . var_export($flowers, true) . ";");
}


if (isset($_POST['delete'])) {
    $id = intval($_POST['id']); // Chuyển ID từ chuỗi thành số nguyên

    foreach ($flowers as $key => $flower) {
        if ($flower['id'] === $id) { // Tìm phần tử có ID khớp
            unset($flowers[$key]);
            break;
        }
    }

    $flowers = array_values($flowers); // Đánh lại chỉ số mảng
    file_put_contents('flowers.php', "<?php\n\$flowers = " . var_export($flowers, true) . ";");
}


?>

<main>
    <div class="table-title">
        <div class="row ">
            <div class="col-sm-6 addButton">
                <a href="#addFlowerModal" class="btn btn-success" data-toggle="modal"><i
                        class="material-icons">&#xE147;</i> <span>Thêm hoa</span></a>
            </div>
        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>#</th>
                <th>Tên hoa</th>
                <th>Mô tả</th>
                <th>Ảnh</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
    <?php if (empty($flowers)): ?>
        <tr>
            <td colspan="5">Không có hoa nào.</td>
        </tr>
    <?php else: ?>
        <?php foreach ($flowers as $flower): ?>
            <tr>
                <td><?= htmlspecialchars($flower['id']) ?></td>
                <td><?= htmlspecialchars($flower['name']) ?></td>
                <td><?= htmlspecialchars($flower['des']) ?></td>
                <td>
                    <?php foreach ($flower['img'] as $img): ?>
                        <img src="<?= htmlspecialchars($img) ?>" alt="Ảnh hoa" style="width: 100px; height: auto;">
                    <?php endforeach; ?>
                </td>
                <td>
                    <a href="#editFlowerModal" class="edit"
                        data-id="<?= htmlspecialchars($flower['id']) ?>"
                        data-name="<?= htmlspecialchars($flower['name']) ?>"
                        data-description="<?= htmlspecialchars($flower['des']) ?>"
                        data-images='<?= json_encode($flower['img']) ?>'
                        data-toggle="modal">
                        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                    </a>
                    <a href="#deleteFlowerModal" class="delete"
                        data-id="<?= htmlspecialchars($flower['id']) ?>"
                        data-toggle="modal">
                        <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    <?php endif; ?>
</tbody>



    </table>
</main>

<!-- Add Flower Modal -->
<div id="addFlowerModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm hoa</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên hoa</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="description" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Ảnh 1</label>
                        <input type="file" name="images[]" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Ảnh 2</label>
                        <input type="file" name="images[]" class="form-control">
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


<!-- Edit Flower Modal -->
<div id="editFlowerModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title">Sửa hoa</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="id" id="edit-id">
                    <div class="form-group">
                        <label>Tên hoa</label>
                        <input type="text" name="name" id="edit-name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="description" id="edit-description" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Ảnh hiện tại</label>
                        <div id="current-images">
                            <!-- Hiển thị ảnh hiện tại ở đây -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Ảnh 1 (Tùy chọn)</label>
                        <input type="file" name="images[]" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Ảnh 2 (Tùy chọn)</label>
                        <input type="file" name="images[]" class="form-control">
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


<!-- Delete Flower Modal -->
<div id="deleteFlowerModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST">
                <input type="hidden" name="id" id="delete-id">
                <div class="modal-header">
                    <h4 class="modal-title">Xóa hoa</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn có chắc muốn xóa hoa này?</p>
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
        var description = $(this).data("description");
        var images = $(this).data("images");

        $("#edit-id").val(id);
        $("#edit-name").val(name);
        $("#edit-description").val(description);

        var imageContainer = $("#current-images");
        imageContainer.empty();
        if (images && images.length > 0) {
            images.forEach(function(img) {
                var imgTag = '<img src="' + img + '" alt="Ảnh hiện tại" style="width: 100px; margin-right: 10px;">';
                imageContainer.append(imgTag);
            });
        }

        $("#editFlowerModal").modal("show");
    });

    $(document).on("click", ".delete", function() {
        var id = $(this).data("id");
        $("#delete-id").val(id);
        $("#deleteFlowerModal").modal("show");
    });
</script>

<?php include 'footer.php'; ?>