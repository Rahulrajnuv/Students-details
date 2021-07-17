<?php
$mysqli = new mysqli("localhost", "root", "","university-details");
if($mysqli->connect_error){
    exit ('Could not able to connect to database.');
}

$sql = "SELECT id, name, rollno, address, contact, hobbies,achievements, year, imageid FROM students WHERE id = ?";

$stmt = $mysqli->prepare($sql);
$stmt->bind_param("s", $_GET['q']);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($id, $name, $rollno, $address, $phone, $hby, $achi, $year, $imageid);
$stmt->fetch();
$stmt->close();

echo "<table>";
echo "<tr>";
echo "<th>StudentID</th>";
echo "<td>" . $id . "</td>";
echo "<td rowspan='4'><img height='150' width='120' src=" . $imageid . "></td>";
echo "<tr>";
echo "<th>Name</th>";
echo "<td>" . $name . "</td>";
echo "</tr>";
echo "<tr>";
echo "<th>Roll no</th>";
echo "<td>" . $rollno . "</td>";
echo "</tr>";
echo "<tr>";
echo "<th>Address</th>";
echo "<td>" . $address . "</td>";
echo "</tr>";
echo "<tr>";
echo "<th>Phone no</th>";
echo "<td colspan='2'>" . $phone . "</td>";
echo "</tr>";
echo "<tr>";
echo "<th>Year of Addmission</th>";
echo "<td colspan='2'>" . $year . "</td>";
echo "</tr>";
echo "<tr>";
echo "<th>Hobby</th>";
echo "<td colspan='2'>" . $hby . "</td>";
echo "</tr>";
echo "<tr>";
echo "<th>Achievement</th>";
echo "<td colspan='2'>" . $achi . "</td>";
echo "</tr>";
echo "</table>";
?>