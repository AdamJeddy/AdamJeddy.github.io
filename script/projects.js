var db = openDatabase('mydb', '1.0', 'Test DB', 2 * 1024 * 1024);

function createAndDisplayDB() {
  db.transaction(function (tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS COMMENT (id INTEGER PRIMARY KEY, comment VARCHAR)');
  });
   //display all records in table
  db.transaction(function (tx) {
    tx.executeSql('SELECT * FROM COMMENT', [], function (tx, results) {
      var len = results.rows.length;
      for (var i = 0; i < len; i++) {
        createNewComment(results.rows.item(i).comment);
      }
     }, null);
  });
}

function createNewComment(comment) {
  var paragraph = document.createElement("p");
  paragraph.innerHTML += comment;
  document.getElementById("OutputSection").appendChild(paragraph);
  console.log("Output Section: " + document.getElementById("OutputSection").innerHTML);
}

function addComment() {
  var comment = document.getElementById("task").value;
  var query = `INSERT INTO COMMENT (comment) VALUES ("${comment}")`;
  db.transaction(function (tx) {
    tx.executeSql(query);
  });
   createNewComment(comment);
  resetInput();
}

function resetInput() {
  document.getElementById("task").value = "";
}

function clearDatabase() {
  db.transaction(function (tx) {
    tx.executeSql('DELETE FROM COMMENT');
    document.getElementById("OutputSection").innerHTML = "";
  });
}
