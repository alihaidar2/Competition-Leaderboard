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

<h1>Competition Leaderboard</h1>

<form action="index.php" method="post">

Query here: <input type="text" name="query"><br>

<input type="submit">

</form>

<?PHP

	if (isset($_POST['query']) or isset($_GET['sort'])) {

	$sql = htmlspecialchars($_POST['query']) . htmlspecialchars($_GET['query']);
	
	if ($_GET['sort'] == 'id') {
        $sql .= " ORDER BY id";
    }
    elseif ($_GET['sort'] == 'identifier') {
        $sql .= " ORDER BY identifier";
    }
    elseif ($_GET['sort'] == 'created') {
        $sql .= " ORDER BY created";
    }
    elseif ($_GET['sort'] == 'modified') {
        $sql .= " ORDER BY modified";
    }
    elseif ($_GET['sort'] == 'athletename') {
        $sql .= " ORDER BY athletename";
    }
    elseif ($_GET['sort'] == 'dob') {
        $sql .= " ORDER BY dob";
    }
    elseif ($_GET['sort'] == 'identified_gender') {
        $sql .= " ORDER BY identified_gender";
    }
    elseif ($_GET['sort'] == 'competitionid') {
        $sql .= " ORDER BY competitionid";
    }
	
	try { 
        $pdo = new PDO('pgsql:host=127.0.0.1;port=5432;dbname=TestDb;user=webuser');
        
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $rows = $pdo->query($sql);

        $firstrow = $rows->fetch();
        

        echo '<table>';

        echo "<tr>";	

        foreach ($firstrow as $key => $value) {
            if (is_string($key)) {
                echo "<th><a href=\"index.php?sort=$key&query=$sql\">$key</a></th>";
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
        echo "<br><br><i>Your query:   </i>$sql";
	}
	elseif (isset($_GET['sort'])) {
	
        echo "Hello, world!";
	
	}
?>

</center>



</body>
</html>
