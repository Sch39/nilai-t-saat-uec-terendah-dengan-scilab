// fungsi untuk mencari uec terendah kemudian menampilkannya sebagai grafik
function uec_terendah(f, t, jumlah_ditampilkan)
    // apabila t tidak sama dengan 0
  if(t ~= 0)  then
    // membuat indek awal dan indek akhir
    index_awal = t - jumlah_ditampilkan;
    index_akhir = t + jumlah_ditampilkan;
    // membuat array/himpunann angka untuk sumbu x(berupa t) dann y(berrupa uec)
    x_t_terendah = [];
    y_uec_terendah = [];
    // menampilkan tulisan
    mprintf("\n\n ========================= ");
    mprintf("\n =========== List =========== ");
    mprintf("\n  [t] \t\t | [uec]\n");
    // melakukan enumerasi untuk angka dalam range index_awal dan index_akhir
    while (index_awal <= index_akhir)
        // mendapatkan nnilai uec untuk t-n (nilai t ke enumerasi n)
        uec = f(index_awal);
        // menampilkan nilai uec ke console scilab
        mprintf("\n  %i \t\t | %.5f",index_awal, uec);
        
        // memasukkan nilai t-n ke himpunan pada variabel x_t_terendah
        x_t_terendah(1, $+1) = index_awal;
        // memasukkan nilai uec ke himpunan pada variabel y_uec_terendah
        y_uec_terendah(1, $+1) = uec;
        
        // melakukan penambahan nilai 1 ke indikator enumrasi
        index_awal = index_awal + 1;
    end
    
    // menggambar plot berdasarkan himpunan x_t_terendah dan y_uec_terendah sebagai sumbu x dan y
    subplot(2,1,2);
    plot(x_t_terendah, y_uec_terendah, '.b-');
    title("uec - t pada saat uec terendah", "fontsize",3);
    xlabel("t");
    ylabel("uec");
  end
endfunction
