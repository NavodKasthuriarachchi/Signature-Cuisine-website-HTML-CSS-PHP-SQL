<?php
$fullname = $_POST["f_name"];
$address = $_POST["address"];
$mobile = $_POST["mobile"];
$food = $_POST["food"];
$promotion = $_POST["promo"];
$portions = $_POST["port"];
// Perform additional validation for email, username, and password if needed

// Database connection
$conn = mysqli_connect("localhost", "root", "", "restdb");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    $query = $conn->prepare("INSERT INTO odrform(f_name, address, mobile, food, promo,port) VALUES (?, ?, ?, ?, ?, ?)");

    // Assuming email is VARCHAR, username is VARCHAR, and password is VARCHAR in the database
    $query->bind_param("ssissi", $fullname, $address, $mobile, $food, $promotion,$portions );
    $query->execute();

    //echo "<script>window.location.href='Food.html';</script>";
    echo "Order Success";
    $query->close();
    $conn->close();
}
?>