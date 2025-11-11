#Membuat Struktur Directori
mkdir documents images archives logs
ls
touch doc{1..5}.txt
touch img{1..5}.jpeg
touch arc{1..5}.zip
echo "isi" > logs1.log
echo "isi" > logs2.log
echo "isi" > logs3.log
echo "isi" > logs4.log
echo "isi" > logs5.log
echo "isi" > arc1.zip
ls

#Scirp organisasi file
find . -type f -name "*txt" -exec mv {} documents/ \;
find . -type f -name "*jpeg" -exec cp {} images/ \;
find . -type f -name "*zip" -exec mv {} archives/ \;
find . -type f -name "*log" -exec mv {} logs/ \;

#fungsi pencarian
find . -type f -name "*doc*"
find ~/documents -type f -size -20k -exec ls -lh {} \;
find ~/logs -type f -exec grep -li "isi" {} \;

#Generate Laporan
echo "==============================" > report.txt
echo "LAPORAN STATISTIK FILE SISTEM" >> report.txt
echo "==============================" >> report.txt
echo "Tanggal: $(date)" >> report.txt
echo " " >> report.txt
echo "Jumlah File dan Directori:" >> report.txt
ls | wc -l >> report.txt
echo "Ukuran total directori:" >> report.txt
du -sh >> report.txt
echo " " >> report.txt
echo "10 file terbesar:" >> report.txt
find  -type f -exec du -sh {} + | sort -hr | head -n 10 >> report.txt
echo "==============================" >> report.txt

