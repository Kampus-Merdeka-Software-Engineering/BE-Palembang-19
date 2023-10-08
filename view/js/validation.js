document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("myForm");

  form.addEventListener("submit", function (event) {
    event.preventDefault();

    const inputs = form.querySelectorAll("input");

    let allFilled = true;
    inputs.forEach(function (input) {
      if (!input.value) {
        allFilled = false;
      }
    });

    if (allFilled) {
      form.submit();
    } else {
      alert("Please fill in all required fields.");
    }
  });
});
