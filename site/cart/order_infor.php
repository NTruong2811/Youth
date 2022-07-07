<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../content/css/order.css">
</head>

<body>
    <div class="infor_order">
        <h1>THÔNG TIN ĐƠN HÀNG ĐÃ ĐẶT</h1>
        <hr>
        <div class="form_order">
            <h3 class="ing" id="delivery">Đang giao (<?php echo $count_delivery; ?>)</h3>
            <h3 class="ed" id="deliveried">Đã giao (<?php echo $count_deliveried; ?>)</h3>
        </div>

        <div class="box_form_order">
            <div class="delivery">
                <?php if ($count_delivery > 0) { ?>
                    <?php for ($i = 0; $i < count($list_data_delivery); $i++) { ?>

                        <span class="order_mark">Đơn: #<?= $list_data_delivery[$i][$i]['order_id'] ?></span>
                        <div class="main_box">
                            <div class="box">
                                <?php foreach ($list_data_delivery[$i] as $rows) {  ?>
                                    <div class="box_item">
                                        <div class="img">
                                            <img src="../../admin/product/<?php echo $rows['image'] ?>" alt="">
                                        </div>
                                        <div class="content">
                                            <p class='product_name'><?php echo $rows['product_name'] ?></p>
                                            <div class="cost">
                                                <p class="quantity">x<?php echo $rows['quantity'] ?></p>
                                                <div>
                                                    <p class="price"><?php echo number_format(($rows['price'] * $rows['quantity']), 0, '.', '.') . " ₫" ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                            <p class="total_price">Tổng số tiền: <span><?php echo number_format($list_data_delivery[$i][$i]['total_price'], 0, '.', '.') . " ₫" ?></span></p>
                            <a href="?order_confirm&confirm_id=<?php echo $list_data_delivery[$i][$i]['order_id'] ?>" onclick="return(confirm('Bạn đã nhận được hàng?'))">Đã nhận hàng</a>
                        </div>
                    <?php } ?>
                <?php } else { ?>
                    <div class="status_error">
                        <h3>KHÔNG CÓ ĐƠN HÀNG NÀO ĐANG ĐƯỢC GIAO!</h3>
                        <a href="../product/">MUA SẮM NGAY</a>
                    </div>
                <?php } ?>

            </div>

            <div class="deliveried">
                <?php if ($count_deliveried > 0) { ?>
                    <?php for ($i = 0; $i < count($list_data_deliveried); $i++) { ?>

                        <span class="order_mark">Đơn: #<?= $list_data_deliveried[$i][$i]['order_id'] ?></span>
                        <div class="main_box">
                            <div class="box">
                                <?php foreach ($list_data_deliveried[$i] as $rows) {  ?>
                                    <div class="box_item">
                                        <div class="img">
                                            <img src="../../admin/product/<?php echo $rows['image'] ?>" alt="">
                                        </div>
                                        <div class="content">
                                            <p class='product_name'><?php echo $rows['product_name'] ?></p>
                                            <div class="cost">
                                                <p class="quantity">x<?php echo $rows['quantity'] ?></p>
                                                <div>
                                                    <p class="price"><?php echo number_format(($rows['price'] * $rows['quantity']), 0, '.', '.') . " ₫" ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                            <p class="total_price">Tổng số tiền: <span><?php echo number_format($list_data_deliveried[$i][$i]['total_price'], 0, '.', '.') . " ₫" ?></span></p>
                        </div>
                    <?php } ?>
                <?php } else { ?>
                    <div class="status_error">
                        <h3>BẠN CHƯA CÓ ĐƠN HÀNG NÀO ĐÃ MUA!</h3>
                        <a href="../product">MUA SẮM NGAY</a>
                    </div>
                <?php } ?>

            </div>
        </div>
    </div>

</body>

</html>