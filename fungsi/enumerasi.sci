// fungsi untuk menncari nilai t-n saat uec terendah sekaligus mnampilkan grafik dari semua enumrasi yang dilakukan
function t_uec_terendah = enumerasi(f, jumlah_t)
    // membuat himpunan untuk menapung nilai
    i = 1;
    x = [];
    y = [];
    // mendeklarasikan variabel pembantu
    uec_terakhir = 0;
    uec_sekarang = 0;
    t_uec_terendah = 0;
    // mendeklarasikan varriabel untuk membantu apakah proses enumrasi sudah mencapai/melewati uec terendah
    uec_terendah_ditemukan = "salah";
    
    // melakukan enumerasi dari i=1 hingga nilai variabel jumlah_t(nilai yang dimassukan user)
    while(i <= jumlah_t)
    // mendapatkan nilai uec untuk t-n (nilai t saat enumerasi ke -n)
    uec_sekarang = f(i);
    
    // bila nilai saat ini kurang dari nilai uec terakhir di looping, maka tampilkan nilainya
        if (uec_sekarang > uec_terakhir) then
            // apabila nilai dari uec_terakhir tidak sama dengan nol
            if (uec_terakhir ~= 0) then
                // apabila nilai uec terendah pada enumerasi sebelum-sebelumnya belum dittemukan
                if(uec_terendah_ditemukan == "salah") then
                    // ubah nilai variabel uec_terendah_ditemukan agar pada enumerasi settelahnya kode blok if ini tidak dijalankan lagi
                     uec_terendah_ditemukan = "benar";
                     // dapaatkan nnilai t saat uec terendah dengan mengurangi nilai indikator enumerasi dengan 1(karena nilai saat ini adalah nilai setelah uec teereendah)
                     t_uec_terendah = i-1;
                     // tampilkan nilai t dan ueec terendah
                     mprintf("\n* uec terendah saat t = %i", t_uec_terendah);
                     mprintf("\n* nilai uec = %.5f",  uec_terakhir);
                end;

        end;
         // bila nilai saat ini lebih dari nilai uec terakhir di looping, maka tampilkan nilainya (bila if tidak terpenuhi)
        else
            // bila telaah mencapai enumerasi terakhir tampilkan tulisan
            if (i >= jumlah_t)
                mprintf("Kurva tidak berbentuk U!"); 
            end;
        end;
        // menyimpan nilai i(berupa t) dan uec saat eenumerasi ke -n pada variabel x dan y
         x(1, i) = i;
         y(1, i) = uec_sekarang;
         // membuat variabel pembantu enumerasi
         uec_terakhir = uec_sekarang;
         // menambah nilai indikator enumerasi dengan 1
         i = i+1;
    end
    if (t_uec_terendah ~= 0) then
       subplot(2,1,1);
    end
    // menampilkan grafik untuk semua enumerasi
    plot(x, y, '.b-');
    title("Hasil Enumerasi uec - t", "fontsize",3);
    xlabel("t");
    ylabel("uec");
endfunction
