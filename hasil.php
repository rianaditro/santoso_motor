<br><br>
<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>Hasil Rekomendasi</h2>
				</div>
			</div>
		</div>

<div class="col-md-12 offset-md-1 col-lg-12 offset-lg-0">
				<!-- Recently Favorited -->
				<div class="widget dashboard-container my-adslist">
					<table class="table table-responsive product-dashboard-table">
						<thead>
							<tr>
								<th>Foto</th>
								<th>Mobil</th>
								<th class="text-center">Spesifikasi</th>
							</tr>
						</thead>
						<tbody>
                        <?php $n = 0;
    $result = $jp->sql("select * from mobil a inner join merk b on a.kdmerk=b.kdmerk inner join hasil z on a.kdmobil=z.kdmobil order by vi desc");
	
	
   while($row = $jp->fetch($result)){ $n++; 
	if(file_exists("uploaddir/small_front_".$row[kdmobil].".jpg"))
		 {$filename= "uploaddir/small_front_".$row[kdmobil].".jpg";}
		else
		 {$filename= "uploaddir/nophoto.jpg";} 
	if($row[transmisi]==2){
		$transmisi = 'Matic';
	}else if($row[transmisi]==1){
		$transmisi = 'Manual';
	}else{
		$transmisi = 'Manual/Matic';
	}
   ?>                        
							<tr>
								
								<td class="product-thumb">
									<img width="150px" height="auto" src="<?=$filename?>" alt="image description"></td>
								<td class="product-details">
									<h3 class="title"><?=$row[merk]?> <?=$row[tipe]?></h3>
                                    <span><strong>Harga : </strong>Rp. <?=$jp->pt($row[harga])?> </span>
									<span><strong>Transmisi : </strong><?=$transmisi?> </span>
									<span><strong>Kapasitas Mesin : </strong><?=$row[kapasitas_mesin]?> cc</span>
                                    <span><strong>Tahun Pembuatan : </strong><?=$row[tahun_pembuatan]?> </span>
									<span><strong>Nilai: </strong><?=$row[vi]?> </span>
                                      
								</td>
								<td >
									<span><?=$row[spesifikasi]?> </span>
								</td>
							</tr>
							
							
						<?php } ?>
						</tbody>
					</table>
					
				</div>
			</div>



  

</body>
</html>