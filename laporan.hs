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

