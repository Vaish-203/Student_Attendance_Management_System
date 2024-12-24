<!DOCTYPE html>
<html>
<head>
<title>Send SMS</title>
<style>
    .container {
        width: 300px;
        margin: 50px auto;
        border: 2px solid;
        padding: 20px;
        background-color: skyblue;  
    }  
</style>
</head>
<body>
<center><h1>Send SMS</h1></center>
<div class="container">
    <form action="" method="post">
        <table>
            <tr>
                <td>Name :</td>
                <td><input type="text" name="name" placeholder="Enter Name"></td>
            </tr>
            <tr>
                <td>Message :</td>
                <td><textarea name="message" placeholder="Enter Message"></textarea></td>
            </tr>
            <tr>
                <td>Contact No :</td>
                <td><input type="text" name="contact" placeholder="Contact No"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" name="submit">Submit</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

<?php
    $conn = mysqli_connect('localhost', 'root', '', 'sms');
    $otherConn = mysqli_connect('localhost', 'root', '', 'attendancemsystem1');

    if(isset($_POST['submit'])){
    
        $name = $_POST['name'];
        $message = $_POST['message'];
        $contact = $_POST['contact'];
    
        if($name == '' || $message == '' || $contact == ''){
            echo "<script>alert ('All fields are required!')</script>";
            exit();
        } else {
    
            // Inserting into your current database
            $query = "INSERT INTO register(name, msg, contact) VALUES('$name', '$message', '$contact')"; // Changed 'message' to 'msg'
            
            $run_query = mysqli_query($conn, $query);
            
            // Fetching mobile number from other database
            $queryOther = "SELECT mobile_number FROM users WHERE name='$name'";
            $result = mysqli_query($otherConn, $queryOther);
            $row = mysqli_fetch_assoc($result);
            $dest_mobileno = $row['mobile_number'];
            
            // SMS Code
            $msg = urlencode('www.tools4noobs.com/dsaf');
            $sms = urlencode(htmlspecialchars("Congratulation " . $name . " you have registered Successfully"));
            $username = "******"; //use your sms api username
            $pass = "*******"; //enter your password
            $senderid = "********"; //BTOYOU use your sms api sender id
            $priority = "ndnd"; //BTOYOU use your sms api sender id
            $stype = "normal"; //BTOYOU use your sms api sender id
            $sms_url = sprintf("http://bhashsms.com/api/sendmsg.php?user=$username&pass=$pass&sender=$senderid&phone=$dest_mobileno&text=$sms&priority=$priority&stype=$stype");
            
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $sms_url);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, 1);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_TIMEOUT, '3');
            $content = trim(curl_exec($ch));
            curl_close($ch);
            
            echo "<script>alert ('Submitted Successfully!')</script>";
        }
    }
?>
