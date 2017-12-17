
<?php
print_r($_GET);
$ten=$_GET["ten"];
$id=$_GET["id"];
?> <fieldset>Quản lý đơn hàng</fieldset>
       <form action="donhang.php?ten=<?php echo $ten?> & id=<?php echo $id?>" method="post">
       <table align="center">
       <div>
        <tr> <td> chọn loại đơn hàng</td> 
       		<td><select name="loai">
            		<option  value="1">Tất cả</option>
                    <option value="2">Chưa duyệt</option>
                    <option  value="3">Đã duyệt</option>
                    <option 	 value="4">Đã thực hiện</option>
             </select>
             <input type="submit" name="timloai" value="Tìm" /></td>