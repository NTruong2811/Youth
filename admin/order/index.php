<?php
include_once "../../global.php";
include_once "../../dao/order.php";
include_once "../../dao/pdo.php";

check_session();

$result = order_select_all();

if (isset($_REQUEST['controller']) && empty($_REQUEST['direct'])) {
    if ($_REQUEST['controller'] == "order_detail") {
        header('Location: ../' . $_REQUEST['controller'] . '?order_id='.$_REQUEST['order_id']);
    } else {
        header('Location: ../' . $_REQUEST['controller'] . '/');
    }
}

else {
    $VIEW_PAGE = "list.php";
}

require_once "../layout.php";
