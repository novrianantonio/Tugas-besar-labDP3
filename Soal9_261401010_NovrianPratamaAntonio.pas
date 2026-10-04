program sembilan;
uses crt;

var //deklarasi variabel
    th, bln, hari : integer;
    kabisat : boolean;

begin
    clrscr;
    writeln('===================================');
    writeln('=== MENGHITUNG HARI DALAM BULAN ===');
    writeln('===================================');
    writeln;
    write('Masukkan tahun (contoh : 2026) : ');
    readln(th); //input tahun
    write('Masukkan bulan (1-12)          : ');
    readln(bln); //input bulan

    if (bln<1) or (bln>12) then //cek apakah bulan kurang dari 1 ATAU bulan lebih dari 12 bernilai true
    begin //jika kondisi true
        writeln;
        writeln('ERROR : Bulan tidak valid! (Pilih 1-12)');
    end
    else
    begin //jika kondisi false
        if (th mod 400 = 0) or ((th mod 4 = 0) and (th mod 100 = 0)) then //cek apakah tahun MOD 400 sama dengan 0 ATAU (tahun MOD 4 sama dengan 0 DAN tahun mod 100 sama dengan 0) bernilai true
        begin //jika kondisi true
            kabisat:=true;
        end
        else
        begin //jika kondisi false
            kabisat:=false
        end;

        case bln of //case of bulan
        1, 3, 5, 7, 8, 10, 12:hari:=31; //jumlah hari adalah 31 jika di bulan ke 1, 3, 5, 7, 8, 10, 12
        4, 6, 9, 11:hari:=30; //jumlah hari adalah 30 jika  di bulan ke 4, 6, 9, 11
        2: 
        begin //jika pilihan di bulan ke 2
            if kabisat then //cek apakah kabisat bernilai true
            begin
                hari:=29; //jika true, maka jumlah hari bi bulan ke 2 adalah 29
            end
            else 
            begin
                hari:=28; //jika false, maka jumlah hari dibulan ke 2 adalah 28
            end;
        end;
    end;

    writeln;
    writeln('=============================');
    writeln('===== HASIL PERHITUNGAN =====');
    writeln('=============================');
    writeln;
    writeln('Tahun       : ', th); //menampilkan tahun
    
    if kabisat then //cek apakah kabisat bernilai true
    begin
        writeln('Status Tahun : Tahun Kabisat'); //jika true, menampilkan status kabisat
    end
    else
    begin
        writeln('Status Tahun : Bukan tahun kabisat'); //jika false, menampilkan status bukan tahun kabisat
    end;

    writeln('Bulan ke-   : ', bln); //menampilkan bulan
    writeln('Jumlah hari : ', hari, ' Hari'); //menampilkan jumlah hari dalam bulan
end;
end.