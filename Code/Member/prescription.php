<?php
session_start();
	include_once("hader.php");
?>

<?php
$memid=$_SESSION["memberid"];
		$cnn=mysqli_connect("localhost","root","","careathome");
		$qes="Select * from docpre where memid=$memid";
		//echo $qes;
$qry=$cnn->query($qes);
while($res=$qry->fetch_assoc())
{
	#$x="report/".$res['report']."";


// echo "<a class='label label-lg label-yellow arrowed-in arrowed-in-right' href='$x'>Reports</a><br><br>";
	//$x='report/..'.$res["report"];
echo "<a href='../doctor../prescription../".$res["prescription"]."'>Prescription</a><br>";
}
?>


<?php
	include_once("fotter.php");
?>