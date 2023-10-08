function showLoading(event, button) {
  event.preventDefault();
  button.innerHTML = "Processing Payment...";

  setTimeout(function () {
    button.innerHTML = "Payment completed.";

    setTimeout(function () {
      window.location.href = "/Pages/index1.html";
    }, 3000);
  }, 3000);
}
