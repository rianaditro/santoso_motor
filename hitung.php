<?php
error_reporting(0);
session_start();
include 'includes/lib.inc.php';
include APP_ROOT."/includes/class.inc.php";
$jp = new jcore();
$jp->sql("delete from hasil");
//pemilihan kriteria
$menu = array();
if ($_POST[kdmerk]!='')
{$menu[0] = 'kdmerk = '."'".$_POST[kdmerk]."'" ;}
if ($_POST[harga]!='')
{$menu[1] = $_POST[harga];}
if ($_POST[transmisi]!='')
{
    $menu[2] = 'transmisi = '."'".$_POST[transmisi]."'";
}
if ($_POST[kapasitas_mesin]!='')
{$menu[3] = 'kapasitas_mesin = '."'".$_POST[kapasitas_mesin]."'";}
if ($_POST[tahun_pembuatan]!='')
{$menu[4] = 'tahun_pembuatan = '."'".$_POST[tahun_pembuatan]."'";
}
$aray="".join(" and ",$menu)."";

//bobot
// harga 5, transmisi 4, kapasitas 3, tahun pembuatan 2
$bobotharga=5;
$bobottransmisi=2;
$bobotkapasitas_mesin=4;
$bobottahun_pembuatan=3;
$totalbobot = $bobotharga+$bobottransmisi+$bobotkapasitas_mesin+$bobottahun_pembuatan;

//normalisasi bobot
$norbobotharga=$bobotharga/$totalbobot;
$norbobottransmisi=$bobottransmisi/$totalbobot;
$norbobotkapasitas_mesin=$bobotkapasitas_mesin/$totalbobot;
$norbobottahun_pembuatan=$bobottahun_pembuatan/$totalbobot;

//vektor S
if ($aray!='') 
{
$totals = $jp->fetch($jp->sql("SELECT SUM(pow(harga,$norbobotharga) * pow(transmisi,$norbobottransmisi) * pow(kapasitas_mesin,$norbobotkapasitas_mesin) * pow(tahun_pembuatan,$norbobottahun_pembuatan)) as total FROM mobil where $aray"));
$r = $jp->sql("SELECT kdmobil, transmisi, (pow(harga,$norbobotharga) * pow(transmisi,$norbobottransmisi) * pow(kapasitas_mesin,$norbobotkapasitas_mesin) * pow(tahun_pembuatan,$norbobottahun_pembuatan)) as hasil FROM mobil where $aray");
}
else
{
$totals = $jp->fetch($jp->sql("SELECT SUM(pow(harga,$norbobotharga) * pow(transmisi,$norbobottransmisi) * pow(kapasitas_mesin,$norbobotkapasitas_mesin) * pow(tahun_pembuatan,$norbobottahun_pembuatan)) as total FROM mobil"));
$r = $jp->sql("SELECT kdmobil, (pow(harga,$norbobotharga) * pow(transmisi,$norbobottransmisi) * pow(kapasitas_mesin,$norbobotkapasitas_mesin) * pow(tahun_pembuatan,$norbobottahun_pembuatan)) as hasil FROM mobil");
}

//vektor V
while($hasil = $jp->fetch($r)){ 
$nilai = $hasil[hasil]/$totals[total]; 
//hasil itung vi
$simpan=$jp->sql("replace into hasil set kdmobil='".$hasil[kdmobil]."',vi='".$nilai."'");
}

$jp->gotox("index.php?page=hasil");
?>
