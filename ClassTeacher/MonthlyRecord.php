<?php 
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';

?>
<table border="1">
<thead>
    <tr>
    <th>#</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>admissionNumber</th>
    <th>Class</th>
    <th>Class Year</th>
    <th>Status</th>
    <th>Date</th>
    </tr>
</thead>

<?php 
$filename = "Monthly Attendance Report";
$month = date("m"); // Get the current month
$year = date("Y"); // Get the current year

$cnt = 1;
$lastDate = null;  // Variable to store the last date processed

$ret = mysqli_query($conn, "SELECT tblattendance.Id, tblattendance.status, tblattendance.dateTimeTaken, tblclass.className,
        tblclassyears.classYearName, tblstudents.firstName, tblstudents.lastName, tblstudents.admissionNumber
        FROM tblattendance
        INNER JOIN tblclass ON tblclass.Id = tblattendance.classId
        INNER JOIN tblclassyears ON tblclassyears.Id = tblattendance.classYearId
        INNER JOIN tblstudents ON tblstudents.admissionNumber = tblattendance.admissionNo
        WHERE MONTH(tblattendance.dateTimeTaken) = '$month' 
        AND YEAR(tblattendance.dateTimeTaken) = '$year' 
        AND tblattendance.classId = '$_SESSION[classId]' 
        AND tblattendance.classYearId = '$_SESSION[classYearId]'
        ORDER BY tblattendance.dateTimeTaken");  // Order by date for proper grouping

if(mysqli_num_rows($ret) > 0 )
{
    while ($row = mysqli_fetch_array($ret)) 
    { 
        if($row['status'] == '1') {
            $status = "Present"; 
            $colour = "#00FF00";
        } else {
            $status = "Absent";
            $colour = "#FF0000";
        }

        // Add blank row after each date's report
        if ($lastDate && $lastDate != $row['dateTimeTaken']) {
            echo '<tr><td colspan="8"></td></tr>';  // Add a blank row
        }

        echo '<tr>  
                <td>'.$cnt.'</td> 
                <td>'.$row['firstName'].'</td> 
                <td>'.$row['lastName'].'</td> 
                <td>'.$row['admissionNumber'].'</td> 
                <td>'.$row['className'].'</td> 
                <td>'.$row['classYearName'].'</td>  
                <td>'.$status.'</td>     
                <td>'.$row['dateTimeTaken'].'</td>                     
              </tr>';

        $lastDate = $row['dateTimeTaken'];  // Update the last date processed
        
        $cnt++;
   

header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=".$filename."-report.xls");
header("Pragma: no-cache");
header("Expires: 0");
 }
}
?>
</table>
