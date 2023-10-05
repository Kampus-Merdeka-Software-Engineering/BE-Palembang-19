$(document).ready(function () {
  var table = $("#location").DataTable();

  $("#searchForm").on("submit", function (e) {
    e.preventDefault();

    var searchTerm = $("#searchbar").val();
    if (searchTerm === "") {
      table.search("").draw();
    } else {
      table.search(searchTerm).draw();
    }
  });
});
