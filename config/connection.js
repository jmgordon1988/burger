var mysql = require("mysql");
var connectionInfo;
if (process.env.JAWSDB_URL) {
  connectionInfo = process.env.JAWSDB_URL;
} else {
  connectionInfo = {
    host: process.env,
    port: 3306,
    user: "root",
    password: "root",
    database: "burgers_db"
  };
}
var connection = mysql.createConnection(connectionInfo);


connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

module.exports = connection;
