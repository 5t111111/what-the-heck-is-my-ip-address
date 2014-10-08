(function() {
  $("#get-info").click(function() {
    var JSONdata, apiUrl, buttonLabel;
    buttonLabel = $("#get-info").html();
    $("#get-info").attr('disabled', true);
    $("#get-info").html("Fetching...");
    apiUrl = $("#api-url").val();
    $("#result-message").children().remove();
    $("td").remove();
    $.ajax({
      type: "get",
      url: apiUrl,
      success: function(data) {
        $("#get-info").attr('disabled', false);
        $("#get-info").html(buttonLabel);

	var table = $("#result-table");

        function parseObjectField(obj) {
	  var s = "";
	  for (var key in obj) {
	    s += obj[key][0] + ", ";
	  }

          if (s.substr(-2, 2) === ", ") {
            s = s.slice(0, -2);
          }
	  return s
        }

	function createTableRows(dataObj, tableObj) {
	  for (var i in dataObj) {
	    var tr = $("<tr/>");
	    var td1 = $("<td/>");
	    var td2 = $("<td/>");
	    td1.html($("#" + i + "-label").text())
	    tr.append(td1);
	    console.log(typeof(data[i]));
	    if (typeof(data[i]) == "object") {
              td2.html(parseObjectField(data[i]));
            } else {
	      td2.html(data[i]);
            }
	    tr.append(td2);
	    tableObj.append(tr);
	  }
	  return tableObj;
	}

	table = createTableRows(data, table);

        $("#information").append(table);
      },
      error: function(data) {
        var errMsg;
        errMsg = "Failed to get data by unknown reason.";
        console.log("ERROR: " + errMsg);
        p = $("<p/>").html(errMsg);
        $("#result-message").append(p);
        $("#get-info").attr('disabled', false);
        $("#get-info").html(buttonLabel);
      }
    });
  });

  return;

}).call(this);

function updateApiUrl() {
  var apiUrl = "/api?fields=";
  var fields = ["ip", "host", "ua", "port", "lang", "connection", "encoding", "mime"];

  fields.forEach(function(item){
   if($("#" + item).prop('checked')) {
     apiUrl += item + ',';
   }
  });

 if (apiUrl.substr(-1, 1) === ",") {
   apiUrl = apiUrl.slice(0, -1);
 }

 $("#api-url").val(apiUrl);
}
