function loadJSON() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      processReceipt(xhttp);
    }
  };
  xhttp.open("GET", "anime.json", true);
  xhttp.send();
}//load JSON end

function processReceipt(xhttp) {
  var JsonText = xhttp.responseText;
  var obj = JSON.parse(JsonText);
  display(obj);
}//processReceipt end

function display(obj) {
  var table = "<table><tr> <td><h1>My Anime Recommendations</h1><br></td></tr>";
    for (var i in obj.anime) {
    table += "<tr><td><h2>" + obj.anime[i].NAME + "</h2><img src=" + obj.anime[i].IMAGE + " style='float: right;'>";
    table += "<p>" + obj.anime[i].REVIEW + "</p>";
    table += "<p>you can get the book <a href=" + obj.anime[i].BOOK+ ">here</a> and watch the tv series <a href=" + obj.anime[i].SHOW + ">here</a>";
    table += "</tr></td>";
  } //for end
    table += "</table>"
  document.getElementById("demo").innerHTML = table;
}//display end
