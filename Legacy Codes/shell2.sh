
#!/bin/bash
select pilihan in "Menu Utama" "Exit Program"
do
    case $pilihan in 
        "Menu Utama")
        echo -n "Masukkan Inputan : "
        read masuk;
    for ((angka=1; angka<=$masuk; angka=angka+1))
    do
    a=5
    b=2
        if [[ $angka%$a -eq 0 ]]
        then 
        echo "Kode - " $angka "Khusus"
        elif [[ $angka%$b -eq 0 ]]
        then 
        echo "Kode - " $angka "Genap"
        else 
        echo "Kode - " $angka "Ganjil"
fi
done
;;
"Exit Program")
break
;;
*) echo "tidak ada dalam daftar"
;;
esac
done

