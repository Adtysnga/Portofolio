Proyek Portofolio Data Analyst: Analisis Volume & Frekuensi E-commerce Global


**📋Ringkasan Proyek**
Proyek ini bertujuan untuk menganalisis data transaksi e-commerce global (pengecer online yang berbasis di Inggris) untuk mengidentifikasi pola pembelian pelanggan, tren penjualan, dan mengukur kinerja pasar internasional.
Karena ketiadaan data harga di dataset final, analisis ini difokuskan secara eksklusif pada metrik Volume (Kuantitas Unit Terjual) dan Frekuensi (Jumlah Transaksi) untuk memberikan insight operasional dan logistik.


**🛠️ Tools dan Teknologi**
1. Pembersihan Data: Microsoft Excel
2. Database & Query: MySQL .
3. Visualisasi & Dashboard: Tableau (Membuat dashboard interaktif).


**🚀 Tahapan Analisis**
1.  Data Wrangling & Cleaning (Excel)
   - Filter Transaksi Tidak Valid: Menghapus semua baris dengan Quantity negatif (retur), InvoiceNo yang diawali  (pembatalan), dan Unit Price nol.
   - Penanganan Missing Values: Menghapus baris dengan CustomerID yang kosong untuk memastikan akurasi analisis pelanggan dan frekuensi.
2.  Analisis & Agregasi Data (MySQL)
   - Tren Waktu: Menghitung total unit terjual per bulan untuk mengidentifikasi musiman penjualan (puncak November-Desember).
   - Ranking Produk: Menghitung 10 Produk Teratas berdasarkan SUM(Quantity) untuk rekomendasi stok.
   - Analisis Pelanggan: Menghitung Top 10 CustomerID berdasarkan volume pembelian tertinggi (SUM(Quantity)).
3.  Visualisasi dan Pelaporan (Tableau)
   - Dashboard Interaktif: Menggabungkan visualisasi menjadi satu laporan yang terintegrasi, dengan Peta sebagai filter utama.

   - Tampilan Dasboard Tableau
   - ![Tableau Public - latihan 2025-10-30 23-30-15](https://github.com/user-attachments/assets/6437883a-fe1e-4116-8b9c-1142364ce47c)
