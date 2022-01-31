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

if($_REQUEST[kdmobil]!='')
{
	$q = "select * from mobil where kdmobil='".$_REQUEST[kdmobil]."'";
	$r = $jp->sql($q);
	$o = $jp->fetch($r);
	$disabled = " readonly='true' ";
	$kode = $o[kdmobil];
}
else
{
$q1= "SELECT max(RIGHT(kdmobil,3))+1 as maks from mobil ";
	$r1 = $jp->sql($q1);
	$o1 = $jp->fetch($r1);
	
	if (strlen($o1[maks])<=0) {
	 $kode= 'A0001';
	 }
	else if (strlen($o1[maks])==1) {
	 $kode= 'A000'.$o1[maks];
	 }
	else if (strlen($o1[maks])==2) {
	 $kode= 'A00'.$o1[maks];
	 } 
	 else if (strlen($o1[maks])==3) {
	 $kode= 'A0'.$o1[maks];
	 } 
	 else if (strlen($o1[maks])==4) {
	 $kode= 'A'.$o1[maks];
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


function ConfirmDel(kdmobil){
	if(confirm('Hapus..?')){
		window.location="proses.php?page=mobil&action=delete&kdmobil="+kdmobil;
	}
}


</script>
 <script src="js/jquery.validate.min.js"></script>
<style type="text/css">
<!--
.style5 {color: #FFF; font-size: 12px; }
.style6 {font-size: 14px; color:#4d92a2;}
.style10 {font-size: 12px}
.style12 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 12px; }
-->
</style>
</head>
<body>
<h1> Data Mobil </h1>

<script src="js/gen_validatorv31.js" language="javascript"></script>
<form action="proses.php?page=mobil&action=input" method="post" enctype="multipart/form-data" name="Formmobil" id="Formmobil" >
<input name="id_edit" type="hidden" value="<?=$o[kdmobil]?>">
<table width="738" border="0" align="center" cellpadding="2" cellspacing="0">
  
  <tr>
    <td width="78"><label>Kode Mobil</label> </td>
    <td width="9" align="center"><label>:</label></td>
	<td width="413"><div class="col-sm-6"><input name="kdmobil" type="text" id="kdmobil" value="<?=$kode?>" size="5" readonly maxlength="5" class="form-control"></div></td>
 </tr>
    <tr>
    <td width="78"><label>Tipe</label> </td>
    <td width="9" align="center"><label>:</label></td>
	
    <td width="413">
	 <div class="form-group has-feedback">
	<div class="col-sm-6"><input name="tipe" type="text" id="tipe" value="<?=$o[tipe]?>" size="30" maxlength="30" class="form-control">	</div>
	</div>
	  </td>
  </tr>
  
   <tr>
       <td width="78"><label>Merk</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" >  <div class="col-sm-6"><select name="kdmerk" id="kdmerk" class="form-control">
    <option value="">---</option>
      <?php
		$r = $jp->sql("select * from merk order by merk");
		while ($oKel = $jp->fetch($r)){
		$isSelKel = (($oKel[kdmerk]==$o[kdmerk])?"selected":"");
		?>
      <option value="<?=$oKel[kdmerk]?>" <?=$isSelKel?>>
        <?=$oKel[merk]?>
        </option>
      <?php } ?>
    </select></div></td>
    </tr>   
    <tr>
       <td width="78"><label>Transmisi</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" ><div class="col-sm-6"><select name="transmisi" id="transmisi" class="form-control">
    <option value="">---</option>
      
      <option value="1">Manual</option>
      <option value="2">Matic</option>
      
    </select></div></td>
    </tr>   
       <tr>
       <td width="78"><label>Harga</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" >  <div class="form-group has-feedback"> <div class="col-sm-6"><input name="harga" type="text" id="harga" value="<?=$o[harga]?>" size="20" maxlength="20"  onKeyPress="return numbersonly(event);" class="form-control"></div></div></td>
    </tr>
    
      <tr>
       <td width="78"><label>Kapasitas Mesin</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" >  <div class="form-group has-feedback"> <div class="col-sm-6"><input name="kapasitas_mesin" type="text" id="kapasitas_mesin" value="<?=$o[kapasitas_mesin]?>" size="5" maxlength="5"  onKeyPress="return numbersonly(event);" class="form-control"></div> </div></td>
    </tr>
    <tr>
       <td width="78"><label>Tahun Pembuatan</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" >  <div class="form-group has-feedback"> <div class="col-sm-6"><input name="tahun_pembuatan" type="text" id="tahun_pembuatan" value="<?=$o[tahun_pembuatan]?>" size="30" maxlength="4" onKeyPress="return numbersonly(event);" class="form-control"></div> </div></td>
    </tr>
    <tr>
       <td width="78"><label>Spesifikasi</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" >  <div class="col-sm-8"><textarea name="spesifikasi" cols="50" rows="0" id="spesifikasi" class="form-control"><?=$o[spesifikasi]?>
      </textarea></div></td>
    </tr>
    
     
      <tr>
       <td width="78"><label>Foto</label> </td>
    <td width="9" align="center"><label>:</label></td>
      <td width="413" ><?php 
		if(file_exists("../uploaddir/small_med_".$o[kdmobil].".jpg")){ 
			$filename= "../uploaddir/small_med_".$o[kdmobil].".jpg"; ?>
			   <img src="<?=$filename?>" border="0"> 
		<?php }	?>
         
			  <div class="col-sm-8"><input type="file" name="file"></div></td>
    </tr>
    
	
   <tr>
    <td>&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td colspan="2"><div class="col-sm-12"><input type="submit" name="Submit" class="btn btn-primary" value="Simpan" onClick="return doSubmit()">        
      <input type="reset" name="Submit2" class="btn btn-success"  value="Batal" onclick="window.location='index.php?page=mobil'"></div></td>
  </tr>
  <tr>
     <td colspan="4">&nbsp;</td>
	  
    </tr>
</table>

</form>

<?php 
		
		 $q="select * from mobil a inner join merk b on a.kdmerk=b.kdmerk";
		
		
		$result=$jp->sql($q);
		
		?>
<table id="example1" class="table table-bordered table-striped" width="100%">
 <thead>
  <tr bgcolor="#2a5acb">
    <th align="center" valign="middle"><span class="style5">No.</span></th>
	 <th  valign="middle"><span class="style5">Kode Mobil</span></th>
   <th  valign="middle"><span class="style5">Tipe</span></th>
   <th  valign="middle"><span class="style5">Transmisi</span></th>
   <th valign="middle"><span class="style5">Merk</span></th>
   <th valign="middle"><span class="style5">Kapasitas Mesin (cc)</span></th>
   <th valign="middle"><span class="style5">Tahun Pembuatan</span></th>
   <th valign="middle"><span class="style5">Harga</span></th>
   <th valign="middle"><span class="style5">Spesifikasi</span></th>
    <th >	<span class="style5">Proses</span>	</th>
  </tr>
  </thead>
   <?php $n = 0;while($row = $jp->fetch($result)){ $n++; 
   if($row[transmisi]==2){
     $transmisi = 'Matic';
   }else if($row[transmisi]==1){
     $transmisi = 'Manual';
   }else{
     $transmisi = 'Manual/Matic';
   }
 
   ?>
  <tr>
    <td align="center" valign="top"><span class="style12"><?=$n?>.</span></td>
	<td valign="top" align="left"><span class="style12"><b> <?=$row[kdmobil]?></b></span></td>
      <td valign="top" align="left"><span class="style12"><?=$row[tipe]?></span></td>
      <td valign="top" align="left"><span class="style12"><?=$transmisi?></span></td>
      <td valign="top" align="left"><span class="style12"><?=$row[merk]?></span></td>
      <td valign="top" align="right"><span class="style12"><?=$row[kapasitas_mesin]?></span></td>
      <td valign="top" align="right"><span class="style12"><?=($row[tahun_pembuatan])?></span></td>
     <td valign="top" align="right"><span class="style12"><?=$jp->pt($row[harga])?></span></td>
     <td valign="top" align="justify"><span class="style12"><?=$row[spesifikasi]?></span></td>
        <td align="center" valign="top"><a href="index.php?page=mobil&kdmobil=<?=$row[kdmobil]?>"><img src="images/edit.png" width="32" height="32" border="0" title="Edit" /></a><a href="#" onclick="return ConfirmDel('<?=$row[kdmobil]?>')">	 <img src="images/del.png" width="32" height="32" border="0" title="Hapus" /> </a></td>
  </tr>
  <?php } ?>
</table>
<script type="text/javascript">  
  $('form').validate({
        rules: {
 		  kdmobil:{required:true},
       tipe:{required:true},
      transmisi:{required:true},
		  harga:{required:true},
		  kapasitas_mesin:{required:true},
		  tahun_pembuatan:{required:true},
		  spesifikasi:{required:true},
	 
          },
         
    });
</script>
	
<script>
function doSubmit(){
    var v = new Validator("Formmobil");
	v.addValidation("kdmerk","req","Merk tidak boleh kosong");
	}
</script>
</body>
</html>