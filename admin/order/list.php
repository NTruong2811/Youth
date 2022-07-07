<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" method="POST">
        <table>
            <thead>
                <tr>
                    <th>Mã đơn hàng</th>
                    <th>Ngày tạo đơn</th>
                    <th>Khách hàng</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Trạng thái đơn</th>
                    <th>Chức năng</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($result as $rows) { ?>
                    <tr>
                        <td><?php echo $rows['order_id'] ?></td>
                        <td><?php echo $rows['create_at'] ?></td>
                        <td><strong>(<?php echo $rows['user_id'] ?>)</strong> <?php echo $rows['fullname'] ?></td>
                        <td><?php echo $rows['address'] ?></td>
                        <td><?php echo $rows['phone_number'] ?></td>
                        <td><?php echo $rows['status'] ?></td>
                        <td>
                            <a href="?controller=order_detail&order_id=<?php echo $rows['order_id'] ?>">Xem chi tiết</a>
                        </td>
                    </tr>
                <?php } ?>

            </tbody>
        </table>
    </form>
</body>

</html>