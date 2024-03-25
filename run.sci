// me-load semua file di folder fungsi
getd(pwd()+'/fungsi');

// untuk membersihkan layar window
clf();

// panggil fungsi matematika untuk uec dan simpan ke variabel
f = fungsi_uec;

// mendapatkan niilai t saat uec terendah
t_uec_terendah = enumerasi(f, 6000);

//tampilkan uec terendah
uec_terendah(f, t_uec_terendah, 10);
