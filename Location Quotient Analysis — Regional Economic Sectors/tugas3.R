# Nama : Dzikrina Jauza Hasna 
# Jurusan : Sistem Informasi 

# 1. Membuat Data Frame dari tabel pada gambar
sektor <- c("Pertanian, Kehutanan, & Perikanan", 
            "Pertambangan & Penggalian",
            "Industri Pengolahan", 
            "Konstruksi", 
            "Perdagangan Besar & Eceran",
            "Jasa Pendidikan")

pdrb_kab <- c(800, 150, 1200, 600, 950, 300)
pdrb_prov <- c(4000, 2500, 9000, 3500, 6000, 5000)

df <- data.frame(Sektor = sektor, PDRB_Kab = pdrb_kab, PDRB_Prov = pdrb_prov)

# 2. Menentukan Total PDRB
total_kab <- sum(df$PDRB_Kab)   # Hasilnya 4000
total_prov <- sum(df$PDRB_Prov) # Hasilnya 30000

# 3. Menghitung Location Quotient (LQ)
# Rumus: (PDRB Sektor Kab / Total PDRB Kab) / (PDRB Sektor Prov / Total PDRB Prov)
df$Nilai_LQ <- (df$PDRB_Kab / total_kab) / (df$PDRB_Prov / total_prov)

# Membulatkan nilai LQ menjadi 2 angka di belakang koma agar rapi
df$Nilai_LQ <- round(df$Nilai_LQ, 2)

# 4. Klasifikasi Sektor (Basis atau Non-Basis)
df$Klasifikasi <- ifelse(df$Nilai_LQ > 1, "Basis",
                         ifelse(df$Nilai_LQ == 1, "Basis/Batas", "Non-Basis"))

# 5. Menampilkan hasil akhir sesuai instruksi tugas
tabel_hasil <- df[, c("Sektor", "Nilai_LQ", "Klasifikasi")]
print(tabel_hasil)