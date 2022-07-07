function gototop() {
    var t = setInterval(function () {
        document.documentElement.scrollTop -= 40;
        if (document.documentElement.scrollTop <= 0) {
            clearInterval(t);
        }
    }, 1);
}

$(window).scroll(function () {
    if (scrollY >= 50) {
        $(".gototop").addClass("btn_gototop");
    }
    else {
        $(".gototop").removeClass("btn_gototop");
    }
});
$(document).ready(function () {
    $("#select_all").click(function () {
        $("table :checkbox").prop("checked", true);
    });

    $('#unselect_all').click(function () {
        $("table :checkbox").prop("checked", false);
    });

    $("#remove_all").click(function () {
        if ($(":checked").length === 0) {
            alert("Vui lòng chọn ít nhất một mục!");
            return false;
        }
        else {
            $result = confirm('Bạn có muốn xóa không?');
            if ($result == false) {
                return false;
            }
        }
    });
});


var path_name = window.location.pathname;
var infor = path_name.slice(13);
var new_infor = infor.split('/').join('');

$("#" + new_infor).addClass("active");
