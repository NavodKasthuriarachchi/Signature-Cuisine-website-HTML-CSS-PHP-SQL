<?php
$Rname = $_POST["name"];
$Remail = $_POST["email"];
$RPhone = $_POST["Phone"];
$Rdate = $_POST["date"];
$RSeats= $_POST["Seats"];

// Perform additional validation for email, username, and password if needed

// Database connection
$conn = mysqli_connect("localhost", "root", "", "restdb");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    $query = $conn->prepare("INSERT INTO resform(name_r, email_r, phone_r, date_r, seats_r) VALUES (?, ?, ?, ?, ?)");

    // Assuming email is VARCHAR, username is VARCHAR, and password is VARCHAR in the database
    $query->bind_param("ssiii", $Rname, $Remail, $RPhone, $Rdate, $RSeats);
    $query->execute();

    echo "<script>window.location.href='Food.html';</script>";
    //echo "Reservation Submitted";
    $query->close();
    $conn->close();
}
?>