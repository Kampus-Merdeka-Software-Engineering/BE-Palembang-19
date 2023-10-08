$(document).ready(function () {
  $("#myForm").submit(function (event) {
    event.preventDefault();

    var formValid = true;
    $("input[type='text']").each(function () {
      if ($(this).val() === "") {
        formValid = false;
        return false;
      }
    });

    if (!formValid) {
      $("#error-popup").fadeIn();
    } else {
      this.submit();
    }
  });

  $(".error__close").click(function () {
    $("#error-popup").fadeOut();
  });
});
