<link href="assets/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<script src="assets/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="assets/plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
   
   
    <!-- page script -->
<script type="text/javascript">
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": true
        });
      });
    </script>

<?php 

if($_REQUEST[kdmerk]!='')
{
	$q = "select * from merk where kdmerk='".$_REQUEST[kdmerk]."'";
	$r = $jp->sql($q);
	$o = $jp->fetch($r);
	$disabled = " readonly='true' ";
	$kode = $o[kdmerk];
}
else
{
$q1= "SELECT max(RIGHT(kdmerk,1))+1 as maks from merk ";
	$r1 = $jp->sql($q1);
	$o1 = $jp->fetch($r1);
	
	if (strlen($o1[maks])<=0) {
	 $kode= 'M'.'0001';
	 }
	else if (strlen($o1[maks])==1) {
	 $kode= 'M000'.$o1[maks];
	 }
	 else if (strlen($o1[maks])==2) {
    $kode= 'M00'.$o1[maks];
    }
}


?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>::: <?=$title?> :::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script>
//==============================SCRIPT TAMBAHAN UNTUK FILTER KEYBOARD======================================================
function numbersonly(e) {
    var unicode = e.charCode ? e.charCode : e.keyCode
    if ((unicode != 8) && (unicode != 13) && (unicode != 37) && (unicode != 39) && (unicode != 9)) { //if the key isn't the backspace key (which we should allow)
        if (unicode < 48 || unicode > 57) //if not a number
            return false //disable key press
    }
}
//===========================================================================================


function ConfirmDel(kdmerk){
	if(confirm('Hapus..?')){
		window.location="proses.php?page=merk&action=delete&kdmerk="+kdmerk;
	}
}


</script>

<style type="text/css">
<!--
.style5 {color: #FFF; font-size: 12px; }
.style6 {font-size: 14px; color:#4d92a2;}
.style10 {font-size: 12px}
.style12 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 12px; }
-->
</style>
 <script src="js/jquery.validate.min.js"></script>
</head>
<body>

<h1> Data Merk </h1>
<script src="js/gen_validatorv31.js" language="javascript"></script>
<form action="proses.php?page=merk&action=input" method="post" enctype="multipart/form-data" name="form" id="form" >
<input name="id_edit" type="hidden" value="<?=$o[kdmerk]?>">
<table width="738" border="0" align="center" cellpadding="2" cellspacing="0">
  
  <tr>
    <td width="101"><label>Kode Merk</label> </td>
    <td width="11" align="center"><label>:</label></td>
	<td width="614"><div class="col-sm-4"><input name="kdmerk" type="text" id="kdmerk" value="<?=$kode?>" size="10" maxlength="7" readonly class="form-control"></div>
  </td>
 </tr>
   <tr>
       <td width="101"><label>Merk</label> </td>
     <td width="11" align="center"><label>:</label></td>
      <td width="614" >
       <div class="form-group has-feedback">
      <div class="col-sm-12"><input name="merk" type="text" id="merk" size="30" maxlength="30" value="<?=$o[merk]?>" class="form-control"></div></div>
      </td>
    </tr>
  
	
    
	
   <tr>
    <td>&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td colspan="2"><div class="col-sm-12"><input type="submit" name="Submit" class="btn btn-primary" value="Simpan" onClick="return doSubmit()">        
      <input type="reset" name="Submit2" class="btn btn-success"  value="Batal" onclick="window.location='index.php?page=merk'"></div></td>
  </tr>
  <tr>
     <td colspan="4">&nbsp;</td>
	  
    </tr>
</table>

</form>

<?php 
		
		 $q="select * from merk ";
		
		
		$result=$jp->sql($q);
		
		?>
<table id="example1" class="table table-bordered table-striped" width="60%">
 <thead>
  <tr bgcolor="#2a5acb">
    <th width="52" align="center" valign="middle"><span class="style5">No.</span></th>
	 <th width="141"  valign="middle"><span class="style5">Kode Merk</span></th>
     <th width="287" valign="middle"><span class="style5">Merk</span></th>
   
    <th >	<span class="style5">Proses</span>	</th>
  </tr>
  </thead>
   <?php $n = 0;while($row = $jp->fetch($result)){ $n++; 
 
   ?>
  <tr>
    <td  align="right" valign="top"><span class="style12"><?=$n?>.</span></td>
	<td  valign="top" align="center"><span class="style12"><?=$row[kdmerk]?></span></td>
      <td  valign="top" align="justify"><span class="style12"><?=$row[merk]?></span></td>

    <td width="149" align="center" valign="top"><a href="index.php?page=merk&kdmerk=<?=$row[kdmerk]?>"><img src="images/edit.png" width="32" height="32" border="0" title="Edit"/></a>
    <a href="#" onclick="return ConfirmDel('<?=$row[kdmerk]?>')">	 <img src="images/del.png" width="32" height="32" border="0" title="Hapus" /> </a></td>
  </tr>
  <?php } ?>
</table>

<script type="text/javascript">  
  $('form').validate({
        rules: {
 		  merk:{required:true},
		  	  
          },
         
    });
</script>

</body>
</html>