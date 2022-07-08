document.addEventListener("DOMContentLoaded", () => {
    const btn = document.querySelector("div.hj-3");
    const list = document.querySelector("ul.hj-list");
  
    if (btn) {
      btn.addEventListener("mouseover", function () {
        list.style.visibility = "visible";
        list.style.opacity = "1";
      });
      btn.addEventListener("mouseout", function () {
        list.style.visibility = " hidden";
      });
    }
  
    if (list) {
      list.addEventListener("mouseover", function () {
        list.style.visibility = "visible";
      });
      list.addEventListener("mouseout", function () {
        list.style.visibility = "hidden";
      });
    }
  });