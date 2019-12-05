!/bin/bash
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
declare -a matriks_satu
declare -a matriks_dua
while :; do
clear
echo "Program Matriks"
echo "1. Input angka"
echo "2. Lihat nilai matriks"
echo "3. Kalikan matriks"
echo "4. exit"
read pilih
if [ $pilih == 1 ]
then
    clear
    echo "Masukkan nilai pada matriks ke satu :"
    for ((i=0; i<=3; i++)) do
        echo "Nilai ke "$(( $i + 1))
        read nilai
        matriks_satu[$i]=$nilai
    done
    echo ""
    echo "Masukkan nilai pada matriks ke dua :"
    for ((i=0; i<=3; i++)) do
        echo "Nilai ke "$(( $i + 1))
        read nilai 
        matriks_dua[$i]=$nilai
    done
fi
if [ $pilih == 2 ]
then
    clear
    echo "Nilai pada matriks satu"
    for ((i=0; i<4; i++)) do
        echo -n "${matriks_satu[$i]} 
        if [ $i == 1 ]
        then
            echo ""
        fi
    done
    echo ""
    echo ""
    echo "Nilai pada matriks dua"
    for ((i=0; i<4; i++)) do
        echo -n "${matriks_dua[$i]} "
        if [ $i == 1 ]
        then
            echo ""
        fi
    done
    read
fi
if [ $pilih == 3 ]
    then
    clear
    declare -a matriks_tiga
    for ((i=0; i<2; i++)) do
        for ((j=0; j<2; j++)) do
            let matriks_tiga[$i]+=matriks_satu[$j]*matriks_dua[$i+$j*2]
        done
    done
    for ((i=0; i<2; i++)) do
        for ((j=0; j<2; j++)) do
            let matriks_tiga[$i+2]+=matriks_satu[$j+2]*matriks_dua[$i+$j*2]
        done    
    done
    echo "Hasil perkalian"
    for ((i=0; i<4; i++)) do
        echo -n "${matriks_tiga[$i]} "
        if [ $i == 1 ]
        then
            echo ""
        fi
    done
    unset matriks_tiga
    read
fi
if [ $pilih == 4 ]
then
    exit
fi
done

