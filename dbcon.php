<?php
$conn = mysqli_connect("localhost", "root", "", "regdb");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully!";
mysqli_close($conn);
?>