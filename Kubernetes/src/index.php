<html lang="en">
  <head>
    <title>The Times Higher Education World University Rankings 2023</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
  </head>
  <body>
    <h1>Universities</h1>
    <table>
      <tr>
        <th>name</th>
        <th>country</th>
        <th>rank</th>
      </tr>
      <?php
				$mysqli = new mysqli("mysql-service", "user", "password", "uni");
				$result = $mysqli->query("SELECT * FROM universities;"); foreach ($result as $row) {
      echo "
      <tr>
        <td>{$row['name']}</td>
        <td>{$row['country']}</td>
        <td>{$row['rank']}</td>
      </tr>
      "; } ?>
    </table>
    <?php
			phpinfo();
		?>
  </body>
</html>
