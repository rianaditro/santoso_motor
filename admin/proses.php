<?php
error_reporting(0);
session_start();
$hari = date("y");
include '../includes/lib.inc.php';
include APP_ROOT."/includes/class.inc.php";
include APP_ROOT."/includes/auth.inc.php";
include INCLUDES_DIR."/class.paging.php";
$jp = new jcore();
		
switch($_REQUEST[page]){
	
	case "merk":
		switch($_REQUEST[action]){
		case "input":
		 $r = $jp->sql("select count(*) as j from merk WHERE merk='".$_REQUEST['merk']."' ");
		 $o=$jp->fetch($r);
		 $kata = $_POST['id_edit'];
		 $jumlah = strlen($kata);
		 
			if(($o['j']>0) && ($jumlah<=0)){
			  $jp->alert('Data Merk Sudah Dimasukan...');
			  $jp->gotox("index.php?page=merk");
			  }
				  
				  else if($jumlah>0){
				  
				  $q = "update merk set "
			." merk=\"".$_POST[merk]."\" WHERE kdmerk='".$kata."' ";
			//echo $q;
   		    $jp->sql($q);
			
			$jp->alert('Data Merk\nTelah Diubah...');
			$jp->gotox("index.php?page=merk");
				  
				  }
				  
				  
			 else { 
			
			$q = "replace into merk set "
			." kdmerk='".$_POST[kdmerk]."',merk=\"".$_POST[merk]."\" ";
						
   		    $jp->sql($q);
			$jp->alert('Data Merk\nTelah Tersimpan...');
			$jp->gotox("index.php?page=merk");
			}
		break;
		case "delete":
			$r = $jp->sql("delete from merk where kdmerk=\"".$_REQUEST[kdmerk]."\"");
			$jp->alert('Data Merk\nTelah Terhapus...');
			$jp->gotox("index.php?page=merk");			
		break;
		default:
			$jp->gotox("index.php?page=merk");		
		break;
		}
	break;
	
		
	case "admin":
		switch($_REQUEST[action]){
		case "input":
		 $r = $jp->sql("select count(*) as j from admin WHERE username='".$_REQUEST['username']."' ");
		 $o=$jp->fetch($r);
		 $kata = $_POST['id_edit'];
		 $jumlah = strlen($kata);
		 
			if(($o['j']>0) && ($jumlah<=0)){
			  $jp->alert('Data Admin Sudah Dimasukan...');
			  $jp->gotox("index.php?page=admin");
			  }
				  
				  else if($jumlah>0){
				  
				  $q = "update admin set "
			." password=\"".$_POST[password]."\" WHERE username='".$kata."' ";
			//echo $q;
   		    $jp->sql($q);
			
			$jp->alert('Data Admin\nTelah Diubah...');
			$jp->gotox("index.php?page=admin");
				  
				  }
				  
				  
			 else { 
			
			$q = "replace into admin set "
			." username='".$_POST[username]."',password=\"".$_POST[password]."\" ";
						
   		    $jp->sql($q);
			$jp->alert('Data Admin\nTelah Tersimpan...');
			$jp->gotox("index.php?page=admin");
			}
		break;
		case "delete":
			$r = $jp->sql("delete from admin where username=\"".$_REQUEST[username]."\"");
			$jp->alert('Data Admin\nTelah Terhapus...');
			$jp->gotox("index.php?page=admin");			
		break;
		default:
			$jp->gotox("index.php?page=admin");		
		break;
		}
	break;
	
	case "mobil":
		
		switch($_REQUEST[action]){
				
		case "input":
			
		
		 $r = $jp->sql("select count(*) as j from mobil WHERE kdmerk='".$_POST['kdmerk']."' and tipe='".$_POST['tipe']."' and harga='".$_POST['harga']."' ");
		 $o=$jp->fetch($r);
		 $kata = $_POST['id_edit'];
		 $jumlah = strlen($kata);
		 
			if(($o['j']>0) && ($jumlah<=0)){
			  $jp->alert('Data mobil Sudah Dimasukan...');
			  $jp->gotox("index.php?page=mobil");
			  }
				  
				  else if($jumlah>0){
				  
				  $q = "update mobil set tipe=\"".$_POST[tipe]."\",kdmerk=\"".$_POST[kdmerk]."\",harga='".$_POST[harga]."',transmisi='".$_POST[transmisi]."',kapasitas_mesin='".$_POST[kapasitas_mesin]."',tahun_pembuatan='".$_POST[tahun_pembuatan]."',spesifikasi=\"".$_POST[spesifikasi]."\" where kdmobil='".$kata."' ";
			if($_FILES['file']['name']!=''){
			$jp->UploadImage($kata.".jpg",APP_ROOT."/uploaddir/","file");
			}
			//echo $q;
   		    $jp->sql($q);
			
			$jp->alert('Data mobil\nTelah Diubah...');
			$jp->gotox("index.php?page=mobil");
				  
				  }
				  
				  
			 else { 
			
			$q = "replace into mobil set kdmobil='".$_POST[kdmobil]."',tipe=\"".$_POST[tipe]."\",kdmerk=\"".$_POST[kdmerk]."\",harga='".$_POST[harga]."',transmisi='".$_POST[transmisi]."',kapasitas_mesin='".$_POST[kapasitas_mesin]."',tahun_pembuatan='".$_POST[tahun_pembuatan]."',spesifikasi=\"".$_POST[spesifikasi]."\"   ";
			//echo $q;
			if($_FILES['file']['name']!=''){
			$jp->UploadImage($_POST['kdmobil'].".jpg",APP_ROOT."/uploaddir/","file");
			}
   		    $jp->sql($q);
			$jp->alert('Data mobil\nTelah Tersimpan...');
			$jp->gotox("index.php?page=mobil");
			}
		break;
		case "delete":
			$r = $jp->sql("delete from mobil where kdmobil=\"".$_REQUEST[kdmobil]."\"");
			$jp->alert('Data mobil\nTelah Terhapus...');
			$jp->gotox("index.php?page=mobil");			
		break;
		default:
			$jp->gotox("index.php?page=mobil");		
		break;
		}
	break;
	
	
	
}
?>

 