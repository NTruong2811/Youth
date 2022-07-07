<?php
include_once "../../global.php";
include_once "../../dao/order.php";
check_session();

$notice = "MÃ ĐƠN #" . $_REQUEST['order_id'];


if (isset($_REQUEST['controller']) && empty($_REQUEST['direct'])) {
    if ($_REQUEST['controller'] == "order_detail") {
        header('Location: ../' . $_REQUEST['controller'] . '?order_id=' . $_REQUEST['order_id']);
    } else {
        header('Location: ../' . $_REQUEST['controller'] . '/');
    }
} else {
    $result = order_detail($_REQUEST['order_id']);

    //Tính tiền

    $VIEW_PAGE = "list.php";
}
require_once "../layout.php";
