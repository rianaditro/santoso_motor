<section class="popular-deals section bg-gray">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>Lihat Mobil</h2>
				</div>
			</div>
		</div>
		<div class="row">
  <?php 
	$q="select * from mobil a inner join merk b on a.kdmerk=b.kdmerk limit 10 ";
	$result=$jp->sql($q);
    while($mobil = $jp->fetch($result)){ 
		if(file_exists("uploaddir/small_front_".$mobil[kdmobil].".jpg"))
		 {$filename= "uploaddir/small_front_".$mobil[kdmobil].".jpg";}
		else
		 {$filename= "uploaddir/nophoto.jpg";} 
  		?>
		
			<!-- offer 01 -->
			<div class="col-sm-12 col-lg-4">
				<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="index.php?page=detail&kdmobil=<?=$mobil[kdmobil]?>">
				<img class="card-img-top img-fluid" src="<?=$filename?>" alt="<?=$mobil[tipe]?>" width="100">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="index.php?page=detail&kdmobil=<?=$mobil[kdmobil]?>"><?=$mobil[merk]?> <?=$mobil[tipe]?></a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="#"><?=$mobil[tahun_pembuatan]?></a>
		    	</li>
		    </ul>
		    <p class="card-text">Rp.<?=$jp->pt($mobil[harga])?></p>
		    
		</div>
	</div>
</div>



			</div>
			
	<?php } ?>		
			
		</div>
	</div>
</section>



 
	
 
  