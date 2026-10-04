program tujuh;
uses crt;

var //deklarasi variabel
    kode : char;
    lama : integer;
    total : longint;
    jenis : string;

begin
    clrscr;
    writeln('=======================');
    writeln('= HITUNG TARIF PARKIR =');
    writeln('=======================');
    writeln;
    writeln('Pilih kode kendaraan :');
    writeln(' M : Mobil'); 
    writeln(' K : Motor');
    writeln(' B : Bus');
    write('Masukkan kode kendaraan (M/K/B) : ');
    readln(kode); //input kode kendaraan

    kode:=UpCase(kode); //membuat input kode kendaraan menjadi kapital

    write('Masukkan lama parkir (dalam jam) : ');
    readln(lama); //input lama parkir

    if lama<=0 then //cek apakah lama parkir lebih kecil atau sama dengan 0 bernilai true
    begin
        writeln('Lama parkir harus lebih dari 0 jam'); //jika kondisi true
    end
    else
    begin //jika kondisi false
        case kode of
        'M': //jika kode=M
        begin
        jenis:='Mobil'; 
            if lama>10 then //cek apakah lama parkir lebih besar dari 10 bernilai true 
            begin
                total:=30000; //jika kondisi true
            end
            else
            begin
                total:=5000+((lama-1)*3000); //jika kondisi false
            end;
        end;
        'K': //jika kode=K
        begin
        jenis:='Motor';
            if lama>10 then //cek apakah lama parkir lebih besar dari 10 bernilai true 
            begin
                total:=10000; //jika kondisi true
            end
            else
            begin
                total:=2000+((lama-1)*1000); //jika kondisi false
            end;
        end;
        'B':
        begin
        jenis:='Bus'; //cek apakah lama parkir lebih besar dari 10 bernilai true 
            if lama>10 then
            begin
                total:=50000; //jika kondisi true
            end
            else
            begin
                total:=10000+((lama-1)*5000); //jika kondisi false
            end;
        end;
        else
        begin
            total:=0; //jika kode yg dimasukkan tidak ada di case of
        end;
    end;

    writeln;
    writeln('==========================');
    writeln('===== RINCIAN PARKIR =====');
    writeln('==========================');
    writeln;
    writeln('Jenis kendaraan : ', jenis); //menampilkan jenis kendaraan
    writeln('Lama parkir     : ', lama, 'jam'); //menampilkan lama parkir
    if total>0 then //cek apakah total tarif lebih besar dari 0 bernilai true
    begin //jika kondisi true
        if lama>10 then //cek apakah lama parkir lebih besar dari 10 bernilai true
        begin //jika kondisi true
            writeln('Keterangan      : Dikenakan tarif flat') //menampilkan keterangan tarif flat
        end
        else
        begin //jika kondisi false
            writeln('Keterangan      : Dikenakan tarif normal'); //menampilkan keterangan tarif normal
            writeln('----------------------------------------');
            writeln('Total tarif     : ', total); //menampilkan total tarif
        end;
    end
    else
    begin //jika kondisi false
        writeln('Kode kendaraan tidak valid!'); //menampilkan "kode kendaraan tidak valid"
    end;
    writeln('==========================');
end;
end.