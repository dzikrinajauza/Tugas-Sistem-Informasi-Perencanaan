# Sistem Informasi Perencanaan — Regional Planning Data Analysis

Kumpulan analisis data kependudukan dan ekonomi regional menggunakan R, dikerjakan sebagai bagian dari studi Sistem Informasi di Universitas Terbuka. Proyek-proyek ini menerapkan pendekatan kuantitatif untuk mendukung perencanaan wilayah — mulai dari proyeksi demografi, analisis kebutuhan infrastruktur, hingga identifikasi sektor ekonomi unggulan.

## Daftar Isi
- [1. Population Projection & Healthcare Facility Planning](#1-population-projection--healthcare-facility-planning)
- [2. Location Quotient Analysis — Regional Economic Sectors](#2-location-quotient-analysis--regional-economic-sectors)
- [3. Slope & Aspect Mapping (GIS)](#3-bonus-slope--aspect-mapping-gis)
- [Tools & Libraries](#tools--libraries)

---

## 1. Population Projection & Healthcare Facility Planning

**Studi Kasus:** Proyeksi jumlah penduduk Kota Bekasi tahun 2040 dan analisis kebutuhan fasilitas kesehatan (Puskesmas) berdasarkan hasil proyeksi.

### Ringkasan
- Data dasar: jumlah penduduk Kota Bekasi tahun 2026 (2.653.000 jiwa) berdasarkan kelompok umur dan jenis kelamin, bersumber dari BPS Kota Bekasi.
- Visualisasi **piramida penduduk** untuk membaca struktur demografi (rasio usia produktif vs non-produktif, potret pola kelahiran/harapan hidup).
- Proyeksi penduduk 14 tahun ke depan (2026 → 2040) menggunakan dua model kuantitatif:
  - **Model Pertumbuhan Geometris** (pertumbuhan diskrit per tahun)
  - **Model Pertumbuhan Eksponensial** (pertumbuhan kontinu)
- Analisis kebutuhan fasilitas kesehatan menggunakan standar 1 unit Puskesmas melayani 30.000 penduduk.

### Hasil Utama
| Tahun | Proyeksi Penduduk (Geometris) | Proyeksi Penduduk (Eksponensial) | Kebutuhan Puskesmas |
|---|---|---|---|
| 2026 | 2.653.000 (data aktual) | 2.653.000 (data aktual) | 88 unit |
| 2040 | 3.227.640 | 3.231.885 | 108 unit |

**Insight:** Diperlukan tambahan **20 unit Puskesmas baru** hingga tahun 2040 agar rasio layanan kesehatan tetap sesuai standar seiring pertumbuhan penduduk.

### Cara Menjalankan
```r
# Jalankan di RStudio
source("proyeksiPenduduk.R")
```

### Skill yang Ditunjukkan
`excel`, `R` · `Data Wrangling` · `Statistical Forecasting` · `Data Visualization` · `Public Data Analysis`

---

## 2. Location Quotient Analysis — Regional Economic Sectors

**Studi Kasus:** Mengidentifikasi sektor ekonomi unggulan (basis) dan sektor yang perlu dikembangkan (non-basis) di suatu kabupaten menggunakan metode **Location Quotient (LQ)**, dibandingkan terhadap struktur ekonomi provinsi.

### Ringkasan
- Data: PDRB 6 sektor ekonomi (Pertanian, Pertambangan, Industri Pengolahan, Konstruksi, Perdagangan, Jasa Pendidikan) di tingkat kabupaten vs provinsi.
- Perhitungan LQ untuk setiap sektor menggunakan R, dengan klasifikasi otomatis **Basis** (LQ > 1) vs **Non-Basis** (LQ < 1).
- Interpretasi hasil untuk mendukung dua keputusan kebijakan:
  1. Sektor mana yang jadi andalan ekspor daerah
  2. Sektor mana yang paling strategis untuk diversifikasi ekonomi

### Hasil Utama
| Sektor | Nilai LQ | Klasifikasi |
|---|---|---|
| Pertanian, Kehutanan, & Perikanan | 1.50 | Basis |
| Konstruksi | 1.29 | Basis |
| Perdagangan Besar & Eceran | 1.19 | Basis |
| Industri Pengolahan | 1.00 | Basis/Batas |
| Pertambangan & Penggalian | 0.45 | Non-Basis |
| Jasa Pendidikan | 0.45 | Non-Basis |

**Insight:**
- Sektor **Pertanian, Kehutanan, & Perikanan** adalah sektor unggulan ekspor (LQ tertinggi, tingkat spesialisasi tinggi).
- Sektor **Jasa Pendidikan** direkomendasikan sebagai prioritas diversifikasi ekonomi — berinvestasi pada human capital, mencegah *capital outflow* pelajar ke luar daerah.

### Cara Menjalankan
```r
source("tugas3.R")
```

### Skill yang Ditunjukkan
`R` · `Economic/Regional Analysis` · `Quantitative Methods` · `Data-Driven Policy Recommendation`

---

## 3. Slope & Aspect Mapping (GIS)

**Studi Kasus:** Analisis kemiringan lereng (*slope*) dan arah hadap lereng (*aspect*) wilayah Bekasi dan sekitarnya menggunakan data satelit SRTM (Digital Elevation Model), diproses dengan QGIS.

### Ringkasan
- Klasifikasi zona kemiringan lereng untuk identifikasi potensi tata guna lahan (permukiman, konservasi, area rawan longsor).
- Analisis *aspect* untuk memetakan arah paparan sinar matahari dan potensi aliran air permukaan.
- Output: peta tematik yang mendukung zonasi pembangunan dan mitigasi bencana geologis.

> Proyek ini bersifat pelengkap — menunjukkan kemampuan bekerja dengan data spasial/GIS di luar analisis tabular standar.

### Skill yang Ditunjukkan
`QGIS` · `Geospatial Analysis` · `Remote Sensing Data (DEM/SRTM)`

---

## Tools & Libraries
- **R** (base R untuk statistik & perhitungan)
- **ggplot2**, base `plot()` — visualisasi data
- **QGIS** — pemrosesan data geospasial

## Sumber Data
- Badan Pusat Statistik (BPS) Kota Bekasi
- DEMNAS / USGS SRTM (data elevasi)

## 👤 Author
[Dzikrina Jauza Hasna] Front-End | [dzikrinajauza@gmail.com] · 🔗 https://www.linkedin.com/in/dzikrinajauza/ ·


## 📄 Lisensi
Proyek ini dirilis di bawah lisensi MIT - Untuk keperluan pembelajaran/tugas dan dapat digunakan secara bebas dengan mencantumkan kredit kepada pembuat asli.
