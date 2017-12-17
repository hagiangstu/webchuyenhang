<?php
print_r($_GET);
$ten=$_GET["ten"];
$id=$_GET["id"];
?>


<?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
$sm=postIndex("timloai");
$loaidh=postIndex("loai");
?>
<?php 
	

	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
		if (isset($_POST["timloai"]))
		{
			$stmt=$pdh->prepare("Select * from donhang	JOIN xuly ON donhang.Xuly = xuly.Maloaixl where IDkh=".$id);
			$stmt->execute();
			$r=$stmt->fetchAll();
			
		}
?>
<table border="1">
<tr>
	<td>ID</td>
    <td>ID người vận chuyển</td>
    <td>ID quản lý đơn hàng</td>
    <td>Ngày tạo đơn hàng</td>
    <td>Ngày duyệt đơn hàng</td>
    <td>Trạng thái</td>
    <td>ID khách hàng</td>
    <td>Thông tin</td>
    
</tr>
<tr>

	<?php if($loaidh=="1")
		{
			foreach($r as $row1){
				
					$ID=$row1["IDdonhang"];
					$idnvch=$row1["IDnvchuyenhang"];
					$idnvqldh=$row1["IDnvquanlydonhang"];
					$ngaytao=$row1["Ngaytaodonhang"];
					$ngayduyet=$row1["Ngayduyetdon"];
					
					$xuly=$row1["tenloaixl"];
					$IDkh=$row1["IDkh"];
					
					?>
					<tr><td><?php echo "$ID"?></td>
        			<td><?php echo "$idnvch"?></td>
        			<td><?php echo "$idnvqldh"?></td>
        			<td><?php echo "$ngaytao"?></td>
        			<td><?php echo "$ngayduyet"?></td>
					<td><?php echo "$xuly"?></td>
        			<td><?php echo "$IDkh"?></td>
                    <td><a href="thongtindonhang.php?ma=<?php echo $ID?> & nv=<?php echo $id?>">Thông tin</a></td>
                    </tr>
                    
		<?php
			
			}
			}else
				if($loaidh=="2")
				{
					foreach($r as $row1){
					$ID=$row1["IDdonhang"];
					$idnvch=$row1["IDnvchuyenhang"];
					$idnvqldh=$row1["IDnvquanlydonhang"];
					$ngaytao=$row1["Ngaytaodonhang"];
					$ngayduyet=$row1["Ngayduyetdon"];
					$Xuly=$row1["Xuly"];
					$xuly=$row1["tenloaixl"];
					$IDkh=$row1["IDkh"];
					if($Xuly=="7"){
					?>
					<tr><td><?php echo "$ID"?></td>
        			<td><?php echo "$idnvch"?></td>
        			<td><?php echo "$idnvqldh"?></td>
        			<td><?php echo "$ngaytao"?></td>
        			<td><?php echo "$ngayduyet"?></td>
					<td><?php echo "$xuly"?></td>
        			<td><?php echo "$IDkh"?></td>
                    <td><a href="thongtindonhang.php?ma=<?php echo $ID?> & nv=<?php echo $id?>">Thông tin</a></td>
                    </tr>
                    
                    <?php
					}
					}
					}
					
					else
					if($loaidh=="3")
				{
					foreach($r as $row1){
					$ID=$row1["IDdonhang"];
					$idnvch=$row1["IDnvchuyenhang"];
					$idnvqldh=$row1["IDnvquanlydonhang"];
					$ngaytao=$row1["Ngaytaodonhang"];
					$ngayduyet=$row1["Ngayduyetdon"];
					$Xuly=$row1["Xuly"];
					$xuly=$row1["tenloaixl"];
					$IDkh=$row1["IDkh"];
					if($Xuly==8){
					?>
					<tr><td><?php echo "$ID"?></td>
        			<td><?php echo "$idnvch"?></td>
        			<td><?php echo "$idnvqldh"?></td>
        			<td><?php echo "$ngaytao"?></td>
        			<td><?php echo "$ngayduyet"?></td>
					<td><?php echo "$xuly"?></td>
        			<td><?php echo "$IDkh"?></td>
                    <td><a href="thongtindonhang.php?ma=<?php echo $ID?> & nv=<?php echo $id?>">Thông tin</a></td>
                    </tr>
                    
                    <?php
					}
					}
				}
						else
					if($loaidh=="4")
				{
					foreach($r as $row1){
					$ID=$row1["IDdonhang"];
					$idnvch=$row1["IDnvchuyenhang"];
					$idnvqldh=$row1["IDnvquanlydonhang"];
					$ngaytao=$row1["Ngaytaodonhang"];
					$ngayduyet=$row1["Ngayduyetdon"];
					$Xuly=$row1["Xuly"];
					$xuly=$row1["tenloaixl"];
					$IDkh=$row1["IDkh"];
					if($Xuly==9){
					?>
					<tr><td><?php echo "$ID"?></td>
        			<td><?php echo "$idnvch"?></td>
        			<td><?php echo "$idnvqldh"?></td>
        			<td><?php echo "$ngaytao"?></td>
        			<td><?php echo "$ngayduyet"?></td>
					<td><?php echo "$xuly"?></td>
        			<td><?php echo "$IDkh"?></td>
                    <td><a href="thongtindonhang.php?ma=<?php echo $ID?> & nv=<?php echo $id?>">Thông tin</a></td>
                    </tr>
                    
                    <?php
					}
					}
				}
					
			?>
            
		
</tr>
</table>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>