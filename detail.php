<?php
$rd = $jp->sql("select * from mobil a inner join merk b on a.kdmerk=b.kdmerk where kdmobil='".$_REQUEST[kdmobil]."'");
$od = $jp->fetch($rd);
if(file_exists("uploaddir/small_front_".$od[kdmobil].".jpg"))
{$filename= "uploaddir/small_front_".$od[kdmobil].".jpg";}
else{$filename= "uploaddir/nophoto.jpg";}

if($od[transmisi]==2){
	$transmisi = 'Matic';
}else if($od[transmisi]==1){
	$transmisi = 'Manual';
}else{
	$transmisi = 'Manual/Matic';
}
?>

<section class=" section">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Section title -->
				<div class="section-title">
					<h2>Detail Mobil</h2>
				</div>
				<div class="row">
                	<!-- Category list -->
					<div class="col-lg-6 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
						<div class="category-block">
							<div class="header">
								<i class="fa fa-photo icon-bg-7"></i> 
								<h4>Foto</h4>
							</div>
							 <div align="center"><img src="<?=$filename?>" border="0"  width="350"  /></div>
						</div>
					</div> <!-- /Category List -->
                
					<!-- Category list -->
					<div class="col-lg-6 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
						<div class="category-block">
							<div class="header">
								<i class="fa fa-mobile-phone icon-bg-1"></i> 
								<h4><?=$od[tipe]?></h4>
							</div>
							<ul class="category-list" >
								<li><a href="#">Merk <span><?=$od[merk]?></span></a></li>
								<li><a href="#">Transmisi <span><?=($transmisi)?></span></a></li>
                              	<li><a href="#">Harga <span><?=$jp->pt($od[harga])?></span></a></li>
                                <li><a href="#">Kapasitas Mesin <span><?=($od[kapasitas_mesin])?> cc</span></a></li>
                                <li><a href="#">Tahun Pembuatan <span><?=($od[tahun_pembuatan])?></span></a></li>
                                <li><a href="#">Spesifikasi </a></li>
                                <li><div align="justify"><?=($od[spesifikasi])?></div></li>
                                
                                
							</ul>
						</div>
					</div> <!-- /Category List -->
					
			
				</div>
			</div>
		</div>
	</div>
	<!-- Container End -->
</section>
</body>
</html>
