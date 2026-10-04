program empat;
uses crt;

var //deklarasi variabel
    opsi, a, b : integer;
    hasil : real;
    next : char;

begin
    repeat
    clrscr;
    writeln('==========================');
    writeln('===KALKULATOR SEDERHANA===');
    writeln('==========================');
    writeln;
    writeln('Pilih operasi yg ingin dilakukan :');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian');
    writeln('5. MOD dan DIV');
    write('Pilihanmu : ');
    readln(opsi); //input opsi operator
    
    writeln;
    write('Masukkan angka pertama : ');
    readln(a); //input angka pertama
    write('Masukkan angka kedua   : ');
    readln(b); //input angka kedua

    if opsi=1 then //cek apakah opsi=1
    begin
        hasil:=a+b; //melakukan operasi angka pertama dijumlahkan dengan angka kedua
        writeln('Hasil ', a, ' + ', b, ' = ', hasil:0:2); //menampilkan hasil penjumlahan
    end
    else if opsi=2 then //cek apakah opsi=2
    begin
        hasil:=a-b; //melakukan operasi angka pertama dikurangi dengan angka kedua
        writeln('Hasil ', a, ' - ', b, ' = ', hasil:0:2); //menampilkan hasil pengurangan
    end
    else if opsi=3 then //cek apakah opsi=3
    begin
        hasil:=a*b; //melakukan operasi angka pertama dikalikan dengan angka kedua
        writeln('Hasil ', a, ' * ', b, ' = ', hasil:0:2); //menampilkan hasil perkalian
    end
    else if opsi=4 then //cek apakah opsi=4
    begin
        hasil:=a/b; //melakukan operasi angka pertama dibagi dengan angka kedua
        writeln('Hasil ', a, ' / ', b, ' = ', hasil:0:2); //menampilkan hasil pembagian
    end
    else if opsi=5 then //cek apakah opsi=5
    begin
        hasil:=a mod b; //melakukan operasi angka pertama MOD angka kedua
        writeln('Hasil ', a, ' MOD ', b, ' = ', hasil:0:2); //menampilkan hasil MOD
        hasil:=a div b; //melakukan operasi angka pertama DIV angka kedua
        writeln('Hasil ', a, ' DIV ', b, ' = ', hasil:0:2); //menampilkan hasil DIV
    end;

    write('Apakah ingin melanjukan perhitungan lagi? (Y/T) : ');
    read(next); //input next apakah ingin lanjut perhitungan(Y) atau berhenti(T)
    
    until(UpCase(next)='T'); //pengulangan dilakukan sampai next=T, UpCase digunakan agar input t atau T tetap dibaca T
end.