program satu;
uses crt;

var //deklarasi variabel
    i, n : integer;
    hb, sub, tot, dis : real ; //hb=harga barag, sub=subtotal, tot=total, dis=diskon

begin
    clrscr;
    sub:=0; //memastikan sub total masih =0 di awal program
    writeln('==========================================');
    writeln('==========SISTEM KASIR TOKO BUKU==========');
    writeln('==========================================');
    write('Masukkan jumlah barang yang ingin dibeli : ');
    readln(n); //input nilai berapa barang yang ingin dimasukkan

    for i:=1 to n do //perulangan sampai barang ke n
    begin
        write(i, '. Masukkan harga barang ke-', i, ' : Rp');
        readln(hb); //input nilai harga barang ke-i
        sub:=sub+hb; //menambah harga barang ke-i ke subtotal
    end;

    if sub<100000 then //cek kondisi apakah subtotal lebih kecil dari 100000
    begin
        dis:=0; //jika subtotal lebih kecil dari 100000 maka diskon sama dengan 0
    end
    else if ((sub>=100000) and (sub<=500000)) then //jika if diatas adalah false, cek kondisi ke-2, apakah subtotal lebih besar atau sama dengan 100000 DAN apakah subtotal lebih kecil atau sama dengan 500000
    begin
        dis:=sub*0.1; //jika subtotal lebih besar atau sama dengan 100000 DANjika subtotal lebih kecil atau sama dengan 500000, maka diskon adalah 10% atau 0.1 dari subtotal
    end
    else if sub>500000 then //jika if diatas adlah false, cek kondisi ke-3, apakah subtotal lebih dari 500000
    begin
        dis:=sub*0.2; //jika subtotal lebih dari 500000, maka diskon sama dengan 20% atau 0.2 dari subtotal
    end;

    tot:=sub-dis; //menghotung total akhir = subtotal dikurang diskon
    
    writeln;
    writeln('==========================================');
    writeln('==============RINCIAN BELANJA=============');
    writeln('==========================================');
    writeln('Subtotal : Rp', sub:0:0); //menampilkan subtotal atau harga sebelum diskon
    writeln('Diskon   : Rp', dis:0:0); //menampilkan total diskon
    writeln('Total    : Rp', tot:0:0); //menampilakan harga akhir yang harus dibayar setelah dikurangi harga diskon
end.