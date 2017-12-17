
<?php 
print_r($_GET);
$ten=$_GET["ten"];

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../style/css.css" />
<title>website vận chuyển</title>
<link rel="stylesheet" type="text/css" href="modul/dangnhap1.php" />
</head>

<body>
<div class="wrapper">
	<div class="header"><img src="../images/banner.jpg" width="1333" height="120" /></div>
    <div class="menu">
    	<ul >
        	<li><a href="../index.php">Trang Chủ</a></li>
            <li><a href="#">Bảng Giá</a></li>
            <li><a href="#">Quy Trình Giao Hàng</a></li>
            <li><a href="#">Liên Hệ</a></li>
            <li><a href="../modul/dangky.php">Đăng ký</a></li>
            <li><?php echo  "Xin chào ".$ten?></li>
            <li><a href="../modul/dangxuat.php">Đăng xuất</a> </li>
            <li>&nbsp;</li>
            <li>&nbsp;</li>
            <li>&nbsp;</li>
            <li class="timkiem"><input type="text" name="tk" value="   mã đơn hàng cần tìm..."  size="40px"/>  <input type="submit" name="tiemkiem" value="Tìm" size="10px" />	</li>
          
        </ul>
        
    </div>
    <div class="content">
    	<div class="left">
        	<p style="text-align:center; background:#F00; color:#FFF; padding:10px; margin-top:1px">DANH SÁCH</p>
            <div class="danhsachmuc">
            	<ul>
                    <li><a href="#">Quản lý Account</a></li>
                    <li><a href="#">Tạo Account</a></li>
                </ul>
            </div><!--K?T THÚC M?C DANH SÁCH-->
          <p style="text-align:center; background:#F00; color:#FFF; padding:10px; margin-top:1px">CHĂM SÓC KHÁCH HÀNG</p>
          <div class="danhsachmuc">
            	<p style="text-align:center; color:#000; margin:10px; font-size:15px">TỔNG ĐÀI: 0123 4321 123</p>
                <p style="text-align:center; color:#000; margin:10px; font-size:15px">ĐỊA CHỈ LIÊN HỆ: 123F/321 LÊ LỢI TPHCM</p>
            </div><!--KẾT THÚC MỤC DANH SÁCH-->
            <img src="../images/icon2.png" width="279" height="231" />
            <img src="../images/icon3.png" width="281" height="208" />
        </div>
        <div class="right">
        	 <fieldset>Quản lý account</fieldset>
       <form action="account.php?User=<?php echo $ten?>" method="post">
       <table align="center">
       <div>
        <tr> <td> chọn loại account</td> 
       		<td><select name="loaiac">
            		
                    <option value="1">Nhân viên</option>
                    <option  value="2">Khách hàng</option>
                    <option  value="3">Tất cả</option>
                   
             </select>
             <input type="submit" name="timac" value="Tìm" /></td>
       </tr>
       
     
       </div>
       </table>
        </form>
            </div>
        </div>
    </div>
   <div class="clear"></div>
    <div class="footer" >
    
	   <p>Công ty cổ phần dịch vụ giao hàng ShipperShop</p>
	   <p>Giấy CNĐKDN Số 0311 907 295 do Sở KH và ĐT TP.HCM cấp ngày 02/08/2012, cấp đổi lần 3 ngày 09/06/2014</p>
		

    </div>
</div>
</body>
</html>