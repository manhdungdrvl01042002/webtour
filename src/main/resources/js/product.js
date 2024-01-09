var tabLinksProduct = document.querySelectorAll(".tablinks-product");
var tabContentProduct = document.querySelectorAll(".tabcontent-product");

tabLinksProduct.forEach(function (el) {
    el.addEventListener("click", openTabs);
});


function openTabs(el) {
    var btn = el.currentTarget; // lắng nghe sự kiện và hiển thị các element
    var electronic = btn.dataset.electronic; // lấy giá trị trong data-electronic

    tabContentProduct.forEach(function (el) {
        el.classList.remove("active");
    }); //lặp qua các tab content để remove class active

    tabLinksProduct.forEach(function (el) {
        el.classList.remove("active");
    }); //lặp qua các tab links để remove class active

    document.querySelector("#" + electronic).classList.add("active");
    // trả về phần tử đầu tiên có id="" được add class active

    btn.classList.add("active");
    // các button mà chúng ta click vào sẽ được add class active
}