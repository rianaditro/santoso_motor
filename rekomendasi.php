<br><br>
<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>Pilih Kriteria</h2>
				</div>
			</div>
		</div>
<div class="block comment">
			
					<form action="hitung.php" method="post" enctype="multipart/form-data" name="Formrekomendasi" id="Formrekomendasi" >
						<!-- Message -->
						
						<div class="row">
							<div class="col-sm-12 col-md-6">
								<!-- Merk -->
								<div class="form-group mb-30">
								    <label for="name">Merk</label>
								    <select name="kdmerk" id="kdmerk"  class="form-control">
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
                                    </select>
								</div>
							</div>
							
              <div class="col-sm-12 col-md-6">
								<!-- Harga -->
								<div class="form-group mb-30">
								    <label for="harga">Harga</label>
                                    <select name="harga" id="harga" class="form-control" >
                                      <option value="">---</option>
                                      <option value="harga <= 180000000">Di bawah Rp.180.000.000</option>
                                      <option value="harga BETWEEN 250000000 AND 180000000">Rp.180.000.000 - Rp.250.000.000</option>
                                      <option value="harga >= 250000000">Di atas Rp.250.0000.000</option>
                                    </select>
							 
								</div>
							</div>
              <div class="col-sm-12 col-md-6">
								<!-- transmisi -->
								<div class="form-group mb-30">
								    <label for="transmisi">Transmisi</label>
                                    <select name="transmisi" id="transmisi" class="form-control" >
                                      <option value="">---</option>
                                      <option value="2">Matic</option>
                                      <option value="1">Manual</option>
                                    </select>
							 
								</div>
							</div>
                            
              <div class="col-sm-12 col-md-6">
								<!-- Kapasitas Mesin -->
								<div class="form-group mb-30">
								    <label for="kapasitas_mesin">Kapasitas Mesin</label>
                                    <select name="kapasitas_mesin" id="kapasitas_mesin" class="form-control" >
                                      <option value="">---</option>
                                      <?php
                                        $r = $jp->sql("select * from mobil group by kapasitas_mesin order by kapasitas_mesin");
                                        while ($oKel = $jp->fetch($r)){
                                        $isSelKel = (($oKel[kapasitas_mesin]==$o[kapasitas_mesin])?"selected":"");
                                        ?>
                                      <option value="<?=$oKel[kapasitas_mesin]?>" <?=$isSelKel?>>
                                        <?=$oKel[kapasitas_mesin]?> cc
                                        </option>
                                      <?php } ?>
                                    </select>
							 
								</div>
							</div>
                            
              <div class="col-sm-12 col-md-6">
								<!-- Tahun Pembuatan -->
								<div class="form-group mb-30">
								    <label for="tahun_pembuatan">Tahun pembuatan</label>
                                   <select name="tahun_pembuatan" id="tahun_pembuatan" class="form-control">
                                      <option value="">---</option>
                                      <?php
                                        $r = $jp->sql("select * from mobil group by tahun_pembuatan order by tahun_pembuatan");
                                        while ($oKel = $jp->fetch($r)){
                                        $isSelKel = (($oKel[tahun_pembuatan]==$o[tahun_pembuatan])?"selected":"");
                                        ?>
                                      <option value="<?=$oKel[tahun_pembuatan]?>" <?=$isSelKel?>>
                                        <?=$oKel[tahun_pembuatan]?>
                                        </option>
                                      <?php } ?>
                                    </select>
							 
							</div>        
                            
						</div>
            <div class="col-sm-12 col-md-6">
            	<button class="btn btn-transparent">Proses</button>
            </div>
					</form>
				</div>


</body>
</html>