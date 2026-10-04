program delapan;
uses crt;

var //deklarasi variabel
    gol : char;
    jk, jl : integer;
    gp, gl, bonus, total : longint;

begin
    clrscr;
    writeln('================================');
    writeln('===== HITUNG GAJI KARYAWAN =====');
    writeln('================================');
    writeln;

    write('Masukkan golongan karyawan (A/B/C) : ');
    readln(gol); //input golongan karyawan
    gol:=UpCase(gol); //upcase input golongan menjadi kapital

    //inisialisasi nilai awal
    gp:=0;
    gl:=0;
    bonus:=0;

    case gol of
    'A':gp:=1500000;
    'B':gp:=2000000;
    'C':gp:=2500000;
    else
        begin
            writeln;
            writeln('ERROR : Golongan tidak valid! (Pilih : A/B/C)');
            halt;
        end;
    end;

    write('Masukkan jam kerja (Jam) : ');
    readln(jk);

    if jk>40 then
    begin
        jl:=jk-40;
        gl:=jl*20000;
    end
    else
    begin
        jl:=0;
        gl:=0;
    end;

    if (gol='C') and (jk>50) then
    begin
        bonus:=100000;
    end;

    total:=gp+gl+bonus;

    writeln;
    writeln('========================');
    writeln('===== RINCIAN GAJI =====');
    writeln('========================');
    writeln;
    writeln('Golongan Karyawan : ', gol);
    writeln('Total jam kerja   : ', jk, ' Jam');
    writeln('Total jam lembur  : ', jl, ' Jam');
    writeln('========================');
    writeln('Gaji pokok        : ', gp);
    writeln('Gaji lembur       : ', gl);
    writeln('Bonus tambahan    : ', bonus);
    writeln('------------------------');
    writeln('TOTAL GAJI AKHIR  : ', total);
end.