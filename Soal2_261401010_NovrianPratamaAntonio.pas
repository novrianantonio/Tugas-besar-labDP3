program dua;
uses crt;

const pwbenar='pascal123'; //password benar yang terkunci di sistem

var 
    pw : string; //pw=input password
    chance : integer; //jatah percobaan sebelum sisem mengunci akun

begin
    clrscr;
    chance:=0; //memastikan kesempatan=0 diwal program

    writeln('===========================');
    writeln('= SISTEM VERIFIKASI LOGIN =');
    writeln('===========================');
    writeln;

    repeat
        chance:=chance+1; //menmbah kesempatan di awal perulangan untuk menghitung sedang di kesempatan berapa
        write('Masukkan Password : ');
        readln(pw); //input password
        
        if pw=pwbenar then //cek apakah password benar
        begin
            writeln;
            writeln('LOGIN BERHASIL! SELAMAT DATANG');
            break; //menghentikan perulangan apabila password benar
        end
        else if chance<3 then //jika if diatas salah, cek kesepatan apakah masih lebih kecil dari 3
        begin
            writeln;
            writeln('kata sandi salah, silahkan coba lagi')
        end;
    until (chance=3); //menghentikan perulangan apabila kesempatan = 3 dan password salah

    if (pw<>pwbenar) and (chance=3) then //cek apakah password yang dimasukkan tidak sama dengan password yang terdaftar DAN apakah kesempatan = 3
    begin
        writeln;
        writeln('Akses ditolak! akun anda terkunci');
    end;
end.