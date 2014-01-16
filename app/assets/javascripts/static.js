

$("#codeAddress").on('click', function (e) {
    e.preventDefault();
    codeAddress();
  });

function setZipcode(){
    $.ajax({
      type: "get",
      dataType: "json",
      url: "/static/set_zipcode",
      success: function(){
    }
    });
  };