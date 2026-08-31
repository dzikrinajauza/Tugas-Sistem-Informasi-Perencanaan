# =========================================================================
# POPULATION PROJECTION & HEALTHCARE FACILITY ANALYSIS (KOTA BEKASI 2040)
# =========================================================================
# 1. Define Initial Parameters (Menentukan Parameter Awal)
P0 <- 2653000          # Jumlah penduduk tahun dasar (2026)
r  <- 0.0141           # Laju pertumbuhan penduduk per tahun (1.41%)
n  <- 2040 - 2026      # Jarak waktu proyeksi / time horizon (14 tahun)
std_faskes <- 30000    # Standar penduduk per 1 unit Puskesmas
# 2. Population Projection Calculation
# A: Geometric Growth Model
P_geometric <- P0 * (1 + r)^n
# B: Exponential Growth Model
P_exponential <- P0 * exp(r * n)
# 3. Healthcare Facility (Faskes) Requirement Analysis
faskes_2026      <- P0 / std_faskes
faskes_geom_2040 <- P_geometric / std_faskes
faskes_expo_2040 <- P_exponential / std_faskes
# =========================================================================
# PRINT RESULTS (Menampilkan Hasil Perhitungan)
# =========================================================================
cat("--- POPULATION PROJECTION RESULTS (2040) ---\n")
cat("Geometric Growth Model   :", round(P_geometric), "jiwa\n")
cat("Exponential Growth Model :", round(P_exponential), "jiwa\n\n")
cat("--- HEALTHCARE FACILITY ANALYSIS (PUSKESMAS) ---\n")
cat("Standar Pelayanan         : 1 unit Puskesmas per", std_faskes, "penduduk\n")
cat("Kebutuhan Tahun 2026      :", round(faskes_2026, 2), "unit\n")
cat("Kebutuhan 2040 (Geometric):", round(faskes_geom_2040, 2), "unit\n")
cat("Kebutuhan 2040 (Exponential):", round(faskes_expo_2040, 2), "unit\n")

