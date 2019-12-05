 #!/bin/bash

nem=0
lagi='y'
while [ $lagi=='y' ] || [ $lagi=='Y' ];
do
buka_aplikasi() 
{
 firefox ESR
}
clear
echo "|-----------------------------------------------------------|"
echo "|                    SMK NEGERI 1 JOMBANG                    |"
echo "|             SELAMAT DATANG CALON SISWA BARU               |"
echo "|-----------------------------------------------------------|"
echo "|Pilih menu di bawah ini     |  *****  *       *  *   *     |"
echo "|****************************|  *      * *   * *  * *       |"
echo "|1. Lihat Profil Sekolah     |  *****  *   *   *  **        |"
echo "|****************************|      *  *       *  *  *      |"
echo "|2. Info Pendaftaran         |  *****  *       *  *    *    |"
echo "|****************************|                              |"
echo "|3. Pendaftaran              |  ^ ^      ^  ^^^^^     ^     |"
echo "|****************************|  ^   ^    ^  ^        ^ ^    |"
echo "|4. Administrasi             |  ^  ^     ^  ^       ^   ^   |"
echo "|****************************|  ^ ^  ^   ^  ^^^^^  ^^^^^ ^  |"
echo "|5. Cetak Data Pendaftar     |  ^     ^  ^      ^  ^     ^  |"
echo "|****************************|  ^    ^   ^      ^  ^     ^  |"
echo "|6. Masuk GOOGLE             |  ^  ^     ^  ^^^^^  ^     ^  |"
echo "|****************************|                              |"
echo "|7. Keluar                   |                              |"
echo "|****************************|******************************|"
echo -n "==>> Pilihan Anda : "
read pilih
case $pilih in
1)
clear
echo "              INILAH PROFIL SMK NEGERI 1 JOMBANG"
echo "SMEA Negeri yang selanjutnya berubah nama menjadi SMEA Negeri 1"
echo "JOMBANG dan sekarang menjadi SMK Negeri 1 JOMBANG."
echo ""
echo "Pilih profil Jurusan di bawah ini:"
echo "1. Teknik Komputer Jaringan"
echo "2. Multimedia"
echo "3. Akuntansi"
echo "4. Administrasi Perkantoran"
echo "5. Pemasaran"
echo -n  "==>> Pilih profil jurusan apa? "
read jurusan
case $jurusan in
1)
clear
echo "Profil Jurusan Teknik Komputer Jaringan"
echo "(TKJ) adalah program keahlian yang bertujuan membekali peserta didik dengan"
echo "keterampilan, pengetahuan, dan sikap agar kompeten dalam merakit, menginstall"
echo "program, dan memperbaiki komputer serta jaringannya."
;;
2)
clear
echo "Profil Jurusan Multimedia"
echo "Multimedia adalah penggunaan komputer untuk menyajikan dan menggabungkan teks"
echo "suara, gambar, animasi dan video dengan alat bantu (tool) dan koneksi (link)"
echo "sehingga pengguna dapat melakukan navigasi, berinteraksi, berkarya dan berkomunikasi."
;;
3)
clear
echo "Profil Jurusan Akuntansi"
echo "Pembelajaran akuntansi terdiri dari pembelajaran manual dan akutansi computer (MYOB),"
echo "dengan mempelajari pelajaran di akuntansi siswa dapat mengetahui pembukuan keuangan"
echo "baik untuk perusahaan jasa, perusahaan dagang, dan perusahaan manufaktur, siswa dapat"
echo "melakukan pembukuan keuangan minimal bagi dirinya sendiri dan perusahaan pada umumnya."
;;
4)
clear
echo "Profil Jurusan Adminisrasi Perkantoran"
echo "Program Keahlian Administrasi Perkantoran merupakan program yang mempunyai tujuan"
echo "membekali peserta didik dengan keterampilan, pengetahuan dan sikap  agar kompeten"
echo "menerapkan dan  mengembangkan kemampuan berkomunikasi baik  lisan maupun tertulis"
echo "kemampuan teknologi informatika untuk melaksanakan tugas secara efektif dan efisien."
;;
5)
clear
echo "Profil Jurusan Pemasaran"
echo "Program keahlian Pemasaran sebagai bagian dari pendidikan menengah, bertujuan"
echo "menyiapkan siswa/tamatan  memasuki  lapangan  kerja serta dapat mengembangkan"
echo "sikap profesional  dalam  lingkup  keahlian  Bisnis  dan Manajemen, khususnya Pemasaran"
;;
*)
echo "Anda salah memasukkan pilihan"
;;
esac
;;
2)
clear
echo "Informasi Pendaftaran"
echo "1. Waktu"
echo "   Pelaksanaan Pendaftaran tanggal 1, 2, dan 3 Juli 2013, Jam : 08.00 s/d 13.00 WIB"
echo "   Pengumuman calon peserta didik diterima pada tanggal 4 Juli 2013, Jam : 08.00 WIB"
echo "2. Pembayaran"
echo "   Uang gedung    : Rp 2000000,0"
echo "   Uang Sumbangan :"
echo "   Pilihan 1  : Rp  750000,0"
echo "   Pilihan 2  : Rp 1000000,0"
;;
3)
clear
echo "Isi data di bawah ini dengan benar"
echo -n "Nama          : "
read nama
echo -n "Alamat        : "
read alamat
echo -n "Tempat Lahir  : "
read tlahir
echo -n "Tanggal Lahir : "
read glahir
echo "(1) Perempuan  (2) Laki-laki"
echo -n "Jenis Kelamin : "
read pil
if [ $pil -eq 1 ];
then
        jk="Perempuan";
elif [ $pil -eq 2 ];
then
       jk="Laki-laki";
else
        jk="Tidak Terdefinisi";
fi
echo -n "Asal Sekolah  : "
read asal
echo "(1)A  (2)B  (3)0  (4)AB"
echo -n "Golongan Darah: "
read pil1
if [ $pil1 -eq 1 ];
then
        gol="A";
elif [ $pil1 -eq 2 ];
then
        gol="B";
elif [ $pil1 -eq 3 ];
then
        gol="0";
elif [ $pil1 -eq 4 ];
then
       gol="AB";
else
        gol="Tidak Terdefinisi"
fi
echo -n "E-mail        : "
read email
echo -n "No HP         : "
read hp
echo -n "Jumlah NEM    : "
read nem
echo "(1) Nasional  (2) Internasional  (3) Tidak Ada"
echo -n "Pretasi       : "
read pil2
if [ $pil2 -eq 1 ];
then
        tambahan=1;
        total=`expr $nem + $tambahan`
elif [ $pil2 -eq 2 ];
then
        tambahan=2;
       total=`expr $nem + $tambahan`
else
        tambahan=0;
        total=`expr $nem + $tambahan`
fi
echo ""
echo "Terima Kasih, Anda sudah melengkapi seluruh data"
;;
4)
clear
case $nem in
0)
echo "Maaf Anda belum mendaftar, jadi tidak bisa melakukan transaksi"
;;
*)
echo "Mohon maaf untuk pembayaran on-line hanya melayani pembayaran uang gedung"
echo "Pemilihan sumbangan juga wajib dipilih di sini"
echo "Rincian dana sebagai berikut:"
echo "   Uang gedung    : Rp 2000000,0"
echo "   Uang Sumbangan :"
echo "   Pilihan 1  : Rp  750000,0"
echo "   Pilihan 2  : Rp 1000000,0"
echo -n "Pilihan uang sumbangan 1/2  : "
read pil4
if [ $pil4 -eq 1 ];
then
        kurang=750000;
        echo "Saudara $nama Anda memilih sumbangan sebesar Rp 750000"
else
        echo "Saudara $nama Anda memilih sumbangan sebesar Rp 1000000"
      kurang=1000000;
fi
echo ""
echo -n "Cicilan uang gedung        : "
read cicilan
echo "Saudara $nama ini rincian Anda : "
if [ $cicilan -lt 2000000 ];
then
        kurang1=`expr 2000000 - $cicilan`
        echo "Uang gedung Anda kurang Rp $kurang1 dan ditambah uang sumbangan $kurang"
elif [ $cicilan -gt 2000000 ];
then
        lebih=`expr $cicilan - 2000000`
        echo "Uang gedung Anda lunas dan ada kembalian Rp $lebih"
        echo "selain itu ada kurangan untuk uang sumbangan $kurang"
elif [ $cicilan -eq 2000000 ];
then
        echo "Uang gedung Anda lunas"
        echo "selain itu ada kurangan untuk uang sumbangan $kurang"
else
       echo "Uang gedung Anda kurang Rp 2000000,0 dan ditambah uang sumbangan $kurang"
fi
;;
esac
;;
5)
clear
case $nem in
0)
echo "Maaf belum ada yang daftar"
;;
*)
clear
echo "Daftar diri Anda"
echo "Nama           : $nama"
echo "Alamat         : $alamat"
echo "Tempat Lahir   : $tlahir"
echo "Tanggal Lahir  : $glahir"
echo "Jenis Kelamin  : $jk"
echo "Golongan Darah : $gol"
echo "E-mail         : $email"
echo "No HP          : $hp"
echo "Asal Sekolah   : $asal"
echo "NEM            : $nem"
echo "Nilai Prestasi : $tambahan"
echo "Total NEM      : $total"
echo ""
echo "Tunggu info diterima atau tidak diterima pada tanggan 4 juli 2013 :)"
;;
esac
;;

6)
clear
buka_aplikasi
;;
7)
clear
echo "Terima kasih telah berkunjung"
echo -n "Tekan enter"
read enter
exit
;;
*)
echo "Anda salah memasukkan pilihan"
;;
esac
echo ""
echo -n "Kembali ke menu utama (y/t) -> ";
read lagi;
done
