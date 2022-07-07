$(window).scroll(function () {
  if (scrollY > 25) {
    $("header").addClass("sticky");
  }
  else {
    $("header").removeClass("sticky");
  }
  if (scrollY >= 50) {
    $(".gototop").addClass("btn_gototop");
  }
  else {
    $(".gototop").removeClass("btn_gototop");
  }
});

$(document).ready(function () {
  $("#top_search").css('display', 'block');
  $(".list_search").css('display', 'none');

  $search = $("#input_search");
  $search.keyup(function () {
    if ($search.val().length > 0) {
      $("#top_search").css('display', 'none');
      $(".list_search").css('display', 'block');
      $(".form_search .search i").css("left", "35px")
      $(".form_search .search input").css("margin-left", "40px")
      $.ajax({
        url: "../../site/action.php",
        type: "post",
        data: {
          search: $search.val()
        },
        success: function (result) {
          $(".list_search").html(result);
        }
      })

    }else{
      $("#top_search").css('display', 'block');
      $(".list_search").css('display', 'none');
      $(".form_search .search i").css("left", "0")
      $(".form_search .search input").css("margin-left", "0")
    }
    $("#close_search").click(function () {
      $(".list_search").html("");
      $("#input_search").val("")

      $("#top_search").css('display', 'block');
      $(".list_search").css('display', 'none');
    })
  })

})

var count = $("#count_cart").text();

$(".form_order #delivery").addClass("show_order_active");


$(".deliveried").css({
  position: "absolute",
  top: 0,
  display: "none",
});
$(".form_order h3").click(function () {
  $(".form_order h3").removeClass("show_order_active");
  $(this).addClass("show_order_active");

  if ($(".ed").hasClass("show_order_active")) {
    $(".deliveried").css({
      position: "relative",
      top: 0,
      display: "block",
    });
    $(".delivery").css({
      position: "absolute",
      top: 0,
      display: "none",
    });
  }
  else {
    $(".delivery").css({
      position: "relative",
      top: 0,
      display: "block",
    });
    $(".deliveried").css({
      position: "absolute",
      top: 0,
      display: "none",
    });
  }
})

$("#all_watches").click(function(){
  $("#sub_watches").slideToggle();
  $("#all_watches").css("background-color", "#f5f5f5")
})
$("#brand_parent").click(function(){
  $("#sub_brand").slideToggle();
})

$("#hello_user").click(function(){
  $("#user_action").slideToggle();
})


$("#top_search > li").click(function () {
  console.log($(this))
  console.log($(this).text())
  $search = $("#input_search");
  $search.val($(this).text())
  $("#top_search").css('display', 'none');
  $(".list_search").css('display', 'block');
  $.ajax({
    url: "../../site/action.php",
    type: "post",
    data: {
      search: $search.val()
    },
    success: function (result) {
      $(".list_search").html(result);
    }
  })
})