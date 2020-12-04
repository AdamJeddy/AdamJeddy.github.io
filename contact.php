<?php
if (isset($_POST['email'])) {
    $email_to = "adamjeddy@outlook.com";

    function error($error) {
        echo "There are errors in the form you submitted.";
        echo "Please go back and fix them.<br><br>";
        die();
    }

    // validation if the expected data exists
    if (!isset($_POST['name']) || !isset($_POST['email']) || !isset($_POST['message'])) {
        error('We are sorry, but there appears to be a problem with the form you submitted.');
    }

    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    echo "<h3>Thank you $name for contacting us. I will get in touch with you very soon on the email $email.\n";
    echo "<br>This is your message: $message <h3/>";
    echo "<br>If I dont respond within 5 days message me on the email $email_to  <h3/>";
    echo "<br><p>Note: if any of this information is wrong fill the form again</p>";
    echo "<a href=contact.html>Click here to go back</a>";
  }
?>
