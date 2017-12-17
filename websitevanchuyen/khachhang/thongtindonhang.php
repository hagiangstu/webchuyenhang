<?php
print_r($_GET);
$ma=$_GET["ma"];
$id=$_GET["nv"];
?>

<?php 
	

	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
		
		
			$stmt=$pdh->prepare("Select * from thongtindonhang	JOIN hinhthucchuyen ON thongtindonhang.Hinhthucchuyen = 		      	   																		hinhthucchuyen.Maloai
																JOIN thanhtoan ON thongtindonhang.Thanhtoan = thanhtoan.Maloaitt
																JOIN loaihang ON thongtindonhang.Loaihang = loaihang.Maloaihang																
																		 where IDdonhang=".$ma);
			$stmt->execute();
			$r=$stmt->fetchAll();
					
?>
<table border="1">

<tr>
	<td>ID đơn hàng</td>
    <td>Loại hàng</td>
    <td>Khối lượng</td>
    <td>Thu hộ</td>
    <td>Hình thức chuyển</td>
    <td>Mô tả</td>
    <td>Thanh toán</td>
    <td>Cước phí</td>
    <td colspan="2">Cập nhật</td>
</tr>
<?php foreach($r as $row1){
				
					$ID=$row1["IDdonhang"];
					$loaihang=$row1["Tenhang"];
					$khoiluong=$row1["Khoiluong"];
					$thuho=$row1["Thuho"];
					$hinhthucchuyen=$row1["Tenloai"];
					$mota=$row1["Mota"];
					$thanhtoan=$row1["Tenloaitt"];
					$cuocphi=$row1["Cuocphi"];
					$xuly=$row1["Xuly"];
					?>
					<tr><td><?php echo "$ID"?></td>
        			<td><?php echo "$loaihang"?></td>
        			<td><?php echo "$khoiluong"?>kg</td>
        			<td><?php echo "$thuho"?></td>
        			<td><?php echo "$hinhthucchuyen"?></td>
					<td><?php echo "$mota"?></td>
        			<td><?php echo "$thanhtoan"?></td>
                    <td><?php echo "$cuocphi"?></td>
                    
					<td>
                  	<a href="xoa.php?madh=<?php echo $ID?> & manv=<?php echo $id?>"/a>Xóa </td>
                  </tr>
                   <?php
				 }
				 
				   ?>
                   
                    
