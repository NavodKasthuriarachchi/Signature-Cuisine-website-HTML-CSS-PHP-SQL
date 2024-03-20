<?php
$firstname = $_POST["f_name"];
$lastname = $_POST["l_name"];
$email = $_POST["email"];
$username = $_POST["user_name"];
$password = $_POST["pass"];

// Perform additional validation for email, username, and password if needed

// Database connection
$conn = mysqli_connect("localhost", "root", "", "restdb");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    $query = $conn->prepare("INSERT INTO regform(f_name, l_name, email, user_name, pass) VALUES (?, ?, ?, ?, ?)");

    // Assuming email is VARCHAR, username is VARCHAR, and password is VARCHAR in the database
    $query->bind_param("sssss", $firstname, $lastname, $email, $username, $password);
    $query->execute();

    echo "<script>window.location.href='login.html';</script>";
    //echo "Registration Success";
    $query->close();
    $conn->close();
}
?>
