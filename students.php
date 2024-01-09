<?php
$myDB = new mysqli('localhost', 'root', '', 'library');

if ($myDB->connect_error) {
    die('Connect Error (' . $myDB->connect_errno . ') ' . $myDB->connect_error);
}

$sql = "SELECT * FROM students ";
$result = $myDB->query($sql);
?>

<table cellspacing="2" cellpadding="6" align="center" border="1">
    <tr>
        <td colspan="4">
            <h3 align="center">Students</h3>
        </td>
    </tr>
    <tr>
        <td align="center">id</td>
        <td align="center">NameStudent</td>
        <td align="center">email </td>
    </tr>

    <?php
    while ($row = $result->fetch_assoc() ) {
        echo "<tr>";
        echo "<td>";
        echo  stripslashes($row["id"]);
        echo "</td><td align='center'>" ;
        echo $row["NameStudent"];
        echo "</td><td>";
        echo $row["email"];
        echo "</td>";
        echo "</tr>";
    }
    ?>
</table>