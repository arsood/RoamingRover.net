$("#new-dw-zip").keypress(function(e) {
  if (e.which == 13) {
    changeDwZip();
  }
});

$("#change-zip-button").click(function() {
  changeDwZip();
});

function changeDwZip() {
  $("#change-zip-modal").modal("hide");
  setDwZip($("#new-dw-zip").val());
}