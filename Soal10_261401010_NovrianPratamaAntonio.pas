program sepuluh;
uses crt;

var hari : integer; //deklarasi variabel

begin
    clrscr;
    writeln('=================================');
    writeln('===== MENAMPILKAN NAMA HARI =====');
    writeln('=================================');
    writeln;
    writeln('Pilih nomor hari :');
    writeln('1. Hari Senin');
    writeln('2. Hari Selasa');
    writeln('3. Hari Rabu');
    writeln('4. Hari Kamis');
    writeln('5. Hari Jumat');
    writeln('6. Hari Sabtu');
    writeln('7. Hari Minggu');
    write('Pilihanmu : ');
    readln(hari); //input kode hari
    writeln;

    case hari of //case of hari
    1:writeln('Hari Senin'); //jika kode 1 maka hari senin
    2:writeln('Hari Selasa'); //jika kode 2 maka hari selasa
    3:writeln('Hari Rabu'); //jika kode 3 maka hari rabu
    4:writeln('Hari Kamis'); //jika kode 4 maka hari kamis
    5:writeln('Hari Jumat'); //jika kode 5 maka hari jumat
    6:writeln('Hari Sabtu'); //jika kode 6 maka hari sabtu
    7:writeln('Hari Minggu'); //jika kode 7 maka hari minggu
    else
        writeln('Pilihan hari tidak valid!'); //jika kode bukan antara 1 sampai 7, maka cetak pilihan tidak valid
    end;
end.