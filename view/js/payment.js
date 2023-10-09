const selectElement = document.getElementById("payment-type");
const phoneNoInput = document.getElementById("uang-elektronik");
const cardInput = document.getElementById("type-card");

selectElement.addEventListener("change", function () {
  const selectedOption = selectElement.value;
  phoneNoInput.style.display = "none";
  cardInput.style.display = "none";

  if (selectedOption === "uang-elektronik") {
    phoneNoInput.style.display = "block";
  } else if (selectedOption === "card") {
    cardInput.style.display = "block";
  }
});

function showLoading(event, button) {
  event.preventDefault();
  button.innerHTML = "Memproses pembayaran...";

  setTimeout(function () {
    button.innerHTML = "Pembayaran dikonfirmasi";

    setTimeout(function () {
      window.location.href = "/Pages/index1.html";
    }, 3000);
  }, 3000);
}
