<!-- CSI2532 Livrable 2 - Application PHP -->

<!DOCTYPE html>

<head>
<title>

</title>

<style>

.table-container {
  margin: 20px;
}
table {
  width: 100%;
}
table tr th {
  text-align: left;
  background-color: #D9E2EC;
}

</style>

</head>

<body>

<center>

<h1>PostgreSQL Query Interface</h1>

<form action="index.php" method="post">

Query here: <input type="text" name="query"><br>

<input type="submit">

</form>

<?PHP

	if (isset($_POST['query'])) {

	$sql = htmlspecialchars($_POST['query']);
	
	try { 
        $pdo = new PDO('pgsql:host=127.0.0.1;port=5432;dbname=TestDb;user=webuser');
        
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $rows = $pdo->query($sql);

        $firstrow = $rows->fetch();

        echo '<table>';

        echo "<tr>";	

        foreach ($firstrow as $key => $value) {
            if (is_string($key)) {
                echo "<th>$key</th>";
            }
        }

        echo "</tr><tr>";
        
        foreach ($firstrow as $key => $value) {
            if (is_string($key)) {
                echo "<td>$value</td>";
            }
        }

        echo "</tr>";

        while($row = $rows->fetch()) {
            echo "<tr>";
            foreach ($row as $key => $value) {
                if (is_string($key)) {
                    echo "<td>$value</td>";
                }
            }
            echo "</tr>";
    }
} catch(PDOException $err) {
    echo '<span style="color: #FF0000"><b>Invalid query!<br></b></span>'  . $err->getMessage();
}
?>

</table>

<?PHP
	}
?>

</center>



</body>
</html>