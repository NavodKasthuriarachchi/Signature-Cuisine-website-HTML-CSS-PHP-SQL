<?php
$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];
$city = $_POST["city"];
$subject = $_POST["subject"];




// Database connection
$conn = mysqli_connect("localhost", "root", "", "restdb");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    $query = $conn->prepare("INSERT INTO conform(firstname, lastname, city, subject) VALUES (?, ?, ?, ?)");

    // Assuming email is VARCHAR, username is VARCHAR, and password is VARCHAR in the database
    $query->bind_param("ssss", $firstname, $lastname, $city, $subject);
    $query->execute();

    //echo "<script>window.location.href='login.html';</script>";
    echo "Request Success";
    $query->close();
    $conn->close();
}
?>