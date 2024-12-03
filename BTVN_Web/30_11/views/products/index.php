<?php include 'header.php'; ?>
<main>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>#</th>
                <th>Sản Phẩm</th>
                <th>Ảnh</th>
                <th>Giá thành</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if (empty($products)): ?>
                <tr>
                    <td colspan="5">Không có sản phẩm nào.</td>
                </tr>
            <?php else: ?>
                <?php foreach ($products as $index => $product): ?>
                    <tr>
                        <td><?= $index + 1 ?></td>
                        <td><?= htmlspecialchars($product['name']) ?></td>
                        <td><img src="<?= htmlspecialchars($product['image']) ?>" alt="Ảnh sản phẩm" style="width: 100px;"></td>
                        <td><?= htmlspecialchars($product['price']) ?> VND</td>
                        <td>
                            <a href="#editModal" data-toggle="modal" data-id="<?= $index ?>" data-name="<?= $product['name'] ?>" data-price="<?= $product['price'] ?>" class="edit">Sửa</a>
                            <a href="#deleteModal" data-toggle="modal" data-id="<?= $index ?>" class="delete">Xóa</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
</main>
<?php include 'footer.php'; ?>
