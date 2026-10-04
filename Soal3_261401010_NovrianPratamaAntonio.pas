program tiga;
uses crt;

var n, i, opsi : integer; //deklarasi variabel

begin
    clrscr;
    writeln('=====================');
    writeln('=PROGRAM DERET ANGKA=');
    writeln('=====================');
    writeln;
    write('Masukkan nilai n : ');
    readln(n); //input nilai n
    writeln;
    writeln('Pilih opsi deret :');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihanmu : ');
    readln(opsi); //input opsi

    writeln;
    writeln('hasil deret angka : ');

    i:=0; //inisialisasi nilai awal 

    while i<n do //perulangan jika i lebih kecil dari n
    begin
        i:=i+1; //menambah i dengan 1 untuk menghitung angka
        if (opsi=1) and (i mod 2 = 0) then //cek apakah opsi=1 DAN iMOD2=0 bernilai true
        begin
            continue; //jika kondisi true, lompati angka
        end
        else if (opsi=2) and (i mod 2 <> 0) then //cek apakah opsi=2 DAN iMOD2 tidak sama dengan 0 bernilai true
        begin
            continue; //jika kondisi true, lompati angka
        end;

        if (i mod 5 = 0) then //cek apakah iMOD5=0 bernilai true
        begin
            continue; //jika kondisi true, lompati angka
        end;

        writeln(i); //cetak angka
    end;
end.