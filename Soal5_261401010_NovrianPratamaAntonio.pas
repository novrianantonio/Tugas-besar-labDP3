program lima;
uses crt;

var //deklarasi variabel
     i, j, m, n, lulus, xlulus : integer;
     nilai, totnilai, rerata : real;

begin
    clrscr;
    writeln('==============================');
    writeln('= PROGRAM REKAPITULASI NILAI =');
    writeln('==============================');
    writeln;

    write('Masukkan jumlah mahasiswa : ');
    readln(m); //input jumlah mahasiswa
    write('Masukkan jumlah tugas     : ');
    readln(n); //input jumlah nilai

    lulus:=0; //inisialisasi jumlah awal lulus
    xlulus:=0; //inisialisais jumlah awal tidak lulus

    for i:=1 to m do //perulangan mahasiswa ke-1 sampai ke-m
    begin
        writeln('mahasiswa ke-', i); //menampilkan sedang di mahasiswa ke-m
        totnilai:=0; //inisiasi perhitungan per mahasiswa

        for j:=1 to n do //perulangan nilai tugas dari nilai ke-1 sampai nilai ke-n
        begin
            write('Masukkan nilai tugas ke-', j, ' : '); //menampilakn sedang di nilai ke-n
            readln(nilai); //input nilai ke-n
            totnilai:=totnilai+nilai; //hitung total nilai
        end;

        rerata:=totnilai/n; //hitung rata-rata
        
        write('Rata-rata : ', rerata:0:2, ' ---> status : '); //menampilkan rata-rata dan status kelulusan
        if rerata>65 then //cek apakah rata-rata lebih besar dari 65
        begin
            writeln('LULUS'); //jika kondidsi true, cetak "LULUS"
            lulus:=lulus+1; //tambah 1 di jumlah mahasiswa yang lulus
        end
        else
        begin
            writeln('TIDAK LULUS'); //jika kondisi false, cetak "TIDAK LULUS"
            xlulus:=xlulus+1; //tambah 1 di jumlah mahasiswa tidak lulus
        end;
        writeln;
    end;

    writeln('=====================');
    writeln('== RINGKASAN AKHIR ==');
    writeln('=====================');
    writeln('Jumlah mahasiswa lulus       : ', lulus); //menampilkan jumlah mahasiswa lulus
    writeln('Jumlah mahasiswa tidak lulus : ', xlulus); //menampilkan jumlah mahasiswa tidak lulus
end.