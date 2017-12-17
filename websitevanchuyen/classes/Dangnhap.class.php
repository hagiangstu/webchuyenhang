 <?php	
	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
	?>
    <?php
		function postIndex($index, $value="")
		{
		if (!isset($_POST[$index]))	return $value;
		return trim($_POST[$index]);
		}
			$sm=postIndex("dangnhap");
			$taikhoan=postIndex("taikhoan");
			$matkhau=md5(postIndex("matkhau"));
?>
   
 <?php
 	session_start();
	if(isset($_SESSION["user"])){
			hearder("location:dangnhap1.php");
		}
	
	$arr="";

	if(!isset($_POST["dangnhap"]))
	{	
	/*	"select Loaiaccount from account where Username=:ten and Password=:ma";*/
		if(empty($taikhoan)|| empty($matkhau)){
			$arr =" dien tai khoan va mat khau";
			}else
			{
				  $sql = "SELECT Username, Password,Loaiaccount FROM users WHERE username=? AND 
 	 password=? ";
    $query = $pdh->prepare($sql);
    $query->execute(array($taikhoan,$matkhau));

    if($query->rowCount() >= 1) {
		/*if($query[]["Loaiaccoint"]=="1")
			$_SESSION["user"]=1;
			header("location:indexadmin.php");
			}else
				if($query[]["Loaiaccoint"]=="2")
					{	$_SESSION["user"]=1;
					header("location:indexnhanvien.php");
						}else
							if($query[]["Loaiaccoint"]=="3")
							{
								$_SESSION["user"]=1;
								header("location:indexkhachhang.php");
							}*/
        $_SESSION['user'] = $user;
        $_SESSION['time_start_login'] = time();
        header("location: dangnhap1.php");
    } else {
        $messeg = "Username/Password is wrong";
    }
}
			}
		
	/*	$sql="select from account where Username=".$taikhoan." and Password=".$matkhau."";
		$data=$pdh->query($sql)->fe();
		print_r($data);*/

	/*if(!$account["Username"]==$taikhoan or !$account["Password"]==$matkhau)*/
	/*	if((!$account["Username"]="taikhoan") || (!$account["Password"]="matkhau"))
		echo " Tên đăng nhập hoặc mật khẩu không đúng vui lòng kiểm tra lại";
		else*/
	/*	{
			if($data["Loaiaccount"]=="1")
			{	
			?>
                <a href="../modul/đăng nhập/indexadmin.php"></a>
                <?php
			}else
				if($data["Loaiaccount"]=="2")
			{	
			?>
                <a href="../modul/đăng nhập/indexnhanvien.php"></a>
                <?php
			}else
				if($data["Loaiaccount"]=="3")
			{	
			?>
                <a href="../modul/đăng nhập/indexkhachhang.php"></a>
                <?php
			}
		}*/

?> 
