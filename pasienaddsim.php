<?php 
//include "librari/inc.koneksidb.php";
include "koneksi.php";
# Baca variabel Form (If Register Global ON)
$TxtNama 	= $_REQUEST['TxtNama'];
$TxtAlamat 	= $_REQUEST['TxtAlamat'];
$NOIP = $_SERVER['REMOTE_ADDR'];
$email=$_POST['textemail'];
# Validasi Form
if (trim($TxtNama)=="") {
	include "PasienAddFm.php";
	echo "Nama belum diisi, ulangi kembali";
}
elseif (trim($TxtAlamat)=="") {
	include "PasienAddFm.php";
	echo "Alamat masih kosong, ulangi kembali";
}
else {
    $NOIP = $_SERVER['REMOTE_ADDR'];

	//$sqldel = "DELETE FROM tmp_pasien WHERE noip='$NOIP'";	mysql_query($sqldel, $koneksi);
	
	$sql  = " INSERT INTO tbpasien (nama,alamat,tanggal,email) 
		 	  VALUES ('$TxtNama','$TxtAlamat',NOW(),'$email')";
	mysql_query($sql) 
		  or die ("SQL Error 2".mysql_error());
	
	$sqlhapus = "DELETE FROM tmp_penyakit ";
	mysql_query($sqlhapus, $koneksi) or die ("SQL Error 1".mysql_error());
	
	$sqlhapus2 = "DELETE FROM tmp_analisa ";
	mysql_query($sqlhapus2, $koneksi) or die ("SQL Error 2".mysql_error());
			
	$sqlhapus3 = "DELETE FROM tmp_gejala ";
	mysql_query($sqlhapus3, $koneksi) or die ("SQL Error 3".mysql_error());
#	$sqlhapus4 = "DELETE FROM analisa_hasil WHERE noip='$NOIP'";
#	mysql_query($sqlhapus4, $koneksi) or die ("SQL Error 4".mysql_error());	
	echo "<meta http-equiv='refresh' content='0; url=index.php?top=konsultasifm.php'>";
}
?>
	