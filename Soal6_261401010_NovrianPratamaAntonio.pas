program enam;
uses crt;

var //deklarasi variabel
    tugas, uts, uas, na, kehadiran : real;
    indeks : char;
    status : string;

begin
    clrscr;
    writeln('================================');
    writeln('= PENENTUAN NILAI AKHIR MATKUL =');
    writeln('================================');
    writeln;
    write('Masukkan nilai tugas (0-100) : ');
    readln(tugas); //input nilai tugas
    write('Masukkan nilai uts (0-100)   : ');
    readln(uts); //input nilai UTS
    write('masukkan nilai uas (0-100)   : ');
    readln(uas); //input nilai UAS
    write('Masukkan kehadiran (0-100%)  : ');
    readln(kehadiran); //input kehadiran

    na:=(tugas*0.3)+(uts*0.3)+(uas*0.4); //hitung nilai akhir

    if (na>=60) and (kehadiran>=80) then // cek apakah nilai akhir lebih besar atau sama dengan 60 DAN kehadiran lebih besar atau sama dengan 80 bernilai true
    begin
        status:='LULUS'; //jika kondisi true, status=LULUS
    end
    else
    begin
        status:='TIDAK LULUS'; //jika kondisi false, status=TIDAK LULUS
    end;

    if na>=80 then //cek apakah nilai akhir lebih besar atau sama dengan 80 bernilai true
    indeks:='A' //jika kondisi true, indeks=A
    else if na>=75 then //jika kondisi false, cek apakah nilai akhir lebih besar atau sama dengan 75
    indeks:='B' //jika kondisi true, indeks=B
    else if na>=60 then //jika kondisi false, cek apakah nilai akhir lebih besar atau sama dengan 60
    indeks:='C' //jika kondisi true, indeks=C
    else if na>=50 then //jika kondisi false, cek apakah nilai akhir lebih besar atau sama dengan 50
    indeks:='D' //jika kondisi true, indeks=D
    else if na<50 then //jika kondisi false, cek apakah nilai akhir lebih kecil dari 50
    begin
    indeks:='E' //jika kondisi true, indeks=E
    end;

    writeln;
    writeln('Review :');
    writeln('Nilai tugas     : ', tugas:0:2); //menampilkan nilai tugas
    writeln('Nilai UTS       : ', uts:0:2); //menampilakn nilai UTS
    writeln('Nilai UAS       : ', uas:0:2); //menampilkan nilai UAS
    writeln('Nilai kehadiran : ', kehadiran:0:2, ' %'); //menampilkan kehadiran
    writeln('Nilai akhir     : ', na:0:2); //menampilkan nilai akhir
    writeln('Indeks          : ', indeks); //menampilkan indeks
    writeln('Status          : ', status); //menampilkan status lulus atau tidak lulus
end.