<?php
include 'db.php';

$result = mysqli_query($conn, "SELECT * FROM patient");

echo "<h2>Patient Records</h2>";

while($row = mysqli_fetch_assoc($result)){
    echo $row['P_Name'] . " - " . $row['P_Gender'] . "<br>";
}
?>