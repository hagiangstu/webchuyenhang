<?php
	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
	if (isset($_POST["dangky"]))
	{
	$sql="insert into account(Username,Password,Loaiaccount) values(:Username, :Password,:Loaiaccount )";
	$arr = array(":Username"=>$_POST["Username"], ":Password"=>$_POST["Password"], ":Loaiaccount"=>3);
	$stm= $pdh->prepare($sql);
	$stm->execute($arr);
	$n = $stm->rowCount();

	$sql="insert into khachhang(Username,Tenkh,Diachi,Gioitinh,Sdt,Email,Loaikh,Ngaysinh) values(:Username ,:Tenkh,       :Diachi, :Gioitinh, :Sdt ,:Email ,:Loaikh, :Ngaysinh)";
	$arr = array(":Username"=>$_POST["Username"],":Tenkh"=>$_POST["Tenkh"], ":Diachi"=>$_POST["Diachi"] , ":Gioitinh"=>$_POST["Gioitinh"]    ,":Sdt"=>$_POST["Sdt"],      ":Email"=>$_POST["Email"], ":Loaikh"=>$_POST["Loaikh"], ":Ngaysinh"=>$_POST["Ngaysinh"]);
	$stm= $pdh->prepare($sql);
	$stm->execute($arr);
	$n = $stm->rowCount();
	 if ($n>0) echo "Đăng ký thành công ";
		else echo "Đăng ký thất bại ";
	}


	
?>

<?php 
$stm = $pdh->prepare("select * from account");
$stm->execute();
$rows = $stm->fetchAll(PDO::FETCH_ASSOC);
?>
<table><td>Username</td><td>Password</td><td>Loainv</td>
		<td>Tên kh</td>
        <td>Địa chỉ</td>
		<td>Gioitinh</td>
        <td>Sdt</td>
		<td>Email</td>
        <td>Loaikh</td>
		<td>Ngày sinh</td>
<?php
foreach($rows as $row)
{
	?>
    <tr><td><?php echo $row["Username"];?></td>
    	<td><?php echo $row["Password"];?></td>
    	<td><?php echo $row["Loaiaccount"];?>
    </tr>
    <?php
}
$stm = $pdh->prepare("select * from khachhang");
$stm->execute();
$rows = $stm->fetchAll(PDO::FETCH_ASSOC);
foreach($rows as $row)
{
	?>
    <tr><td><?php echo $row["Tenkh"];?></td>
    	<td><?php echo $row["Diachi"];?></td>
    	<td><?php echo $row["Gioitinh"];?></td>
        <td><?php echo $row["Sdt"];?></td>
        <td><?php echo $row["Email"];?></td>
        <td><?php echo $row["Loaikh"];?></td>
        <td><?php echo $row["Ngaysinh"];?></td>
    </tr>
    <?php
}
?>
</table>
?>