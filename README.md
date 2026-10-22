# Tugas PBL SDN 02 Kelompok 3 🚀

Repositori aplikasi mobile untuk proyek PBL (Project Based Learning) SDN 02 Kelompok 3 - Politeknik Negeri Malang (Pemrograman Mobile).

---

## 📌 Panduan Kolaborasi untuk Anggota Kelompok

Bagian ini penting dibaca dan diikuti oleh seluruh anggota kelompok agar alur kerja Git rapi dan tidak terjadi konflik kode (*merge conflict*).

---

### 1. Persiapan Awal (Clone & Setup Proyek)

Lakukan langkah ini saat pertama kali mengunduh proyek ke laptop masing-masing:

1. **Clone repositori ke laptop**:
   ```bash
   git clone https://github.com/alfanfhd/PBL-SDN-02_kelompok-3.git
   ```

2. **Masuk ke direktori proyek**:
   ```bash
   cd PBL-SDN-02_kelompok-3
   ```
   *(atau buka folder proyek tersebut di VS Code / Android Studio)*

3. **Pindah ke branch `dev` (kode utama pengembangan)**:
   ```bash
   git checkout dev
   ```

4. **Ambil pembaruan terbaru dari branch `dev`**:
   ```bash
   git pull origin dev
   ```

5. **Install dependensi Flutter**:
   ```bash
   flutter pub get
   ```

---

### 2. Memulai Mengerjakan Fitur Baru

> ⚠️ **PENTING:** Jangan langsung melakukan coding di branch `main` atau `dev`! Buatlah branch terpisah untuk setiap fitur atau tugas yang Anda kerjakan.

1. Pastikan Anda berada di branch `dev` yang sudah ter-*update*:
   ```bash
   git checkout dev
   git pull origin dev
   ```

2. Buat branch baru untuk fitur Anda dengan format `feature/nama-fitur`:
   ```bash
   git checkout -b feature/nama-fitur-kalian
   ```
   *Contoh:*
   * `git checkout -b feature/login-page`
   * `git checkout -b feature/attendance-list`
   * `git checkout -b feature/teacher-dashboard`

3. Mulai *coding* di VS Code sesuai pembagian tugas.

---

### 3. Menyimpan (Commit) dan Mengirim (Push) Kode

Setelah selesai mengerjakan fitur atau ingin menyimpan progres:

1. Periksa file apa saja yang berubah:
   ```bash
   git status
   ```

2. Tambahkan semua perubahan:
   ```bash
   git add .
   ```

3. Simpan perubahan dengan pesan commit yang jelas:
   ```bash
   git commit -m "Menyelesaikan fitur login-page"
   ```

4. Kirim (Push) branch fitur Anda ke GitHub:
   ```bash
   git push origin feature/nama-fitur-kalian
   ```
   *Contoh:*
   ```bash
   git push origin feature/login-page
   ```

---

### 4. Membuat Pull Request (PR)

Setelah kode berhasil di-*push* ke GitHub:
1. Buka repositori di GitHub: [PBL-SDN-02_kelompok-3](https://github.com/alfanfhd/PBL-SDN-02_kelompok-3)
2. Klik tombol **Compare & pull request** untuk branch fitur Anda.
3. Pastikan **base branch** ditujukan ke **`dev`** (bukan ke `main`).
4. Berikan deskripsi singkat tentang apa saja yang telah dibuat/diubah.
5. Konfirmasi ke anggota kelompok / ketua untuk direview dan di-merge ke branch `dev`.

---

### 💡 Tips Menghindari Merge Conflict

Jika teman Anda sudah selesai merge fitur lain ke `dev` dan Anda masih mengerjakan fitur Anda, update branch Anda secara berkala dengan cara:

```bash
# 1. Simpan perubahan lokal jika ada
git add .
git commit -m "WIP: progres sementara"

# 2. Ambil update dari dev
git checkout dev
git pull origin dev

# 3. Gabungkan update dev ke branch fitur Anda
git checkout feature/nama-fitur-kalian
git merge dev
```

---

## 📁 Struktur Folder Proyek (`lib/`)

Struktur folder proyek sudah disiapkan dengan pendekatan arsitektur modular:

```text
lib/
├── main.dart                  # Entry point aplikasi utama (menjalankan MyApp / App)
├── app.dart                   # Root widget aplikasi (MaterialApp, tema, router)
│
├── core/                      # Konfigurasi & utilitas global
│   ├── config/                # Konfigurasi aplikasi (konstanta, env, dll)
│   ├── routing/
│   │   └── app_router.dart    # Manajemen rute navigasi aplikasi
│   ├── theme/
│   │   └── app_theme.dart     # Tema aplikasi (warna, typography, Dark/Light mode)
│   └── utils/                 # Helper fungsi & utilitas umum
│
├── models/                    # Data models / Entity
│   ├── app_user.dart          # Model pengguna (Admin / Guru / Siswa)
│   ├── student.dart           # Model siswa
│   ├── teacher.dart           # Model guru
│   ├── school_class.dart      # Model kelas
│   ├── attendance.dart        # Model presensi / absensi
│   ├── teaching_journal.dart  # Model jurnal mengajar
│   └── attendance_request.dart# Model pengajuan izin/sakit presensi
│
├── services/                  # Business logic & services eksternal
│   └── auth/
│       └── auth_service.dart  # Logika otentikasi (login/logout/user)
│
├── data/                      # Lapisan data
│   ├── repositories/          # Implementasi repository data
│   └── sources/               # Data source (REST API / local database)
│
└── features/                  # Fitur-fitur aplikasi (per modul)
    └── auth/                  # Modul otentikasi
        └── presentation/
            └── login_page.dart# Halaman Login
```

Folder testing:
```text
test/
├── unit/                      # Pengujian unit
├── widget/                    # Pengujian widget
└── integration/               # Pengujian integrasi end-to-end
```

---

## 🛠️ Perintah Berguna

* **Mengunduh dependensi**:
  ```bash
  flutter pub get
  ```
* **Menjalankan aplikasi di emulator / device**:
  ```bash
  flutter run
  ```
* **Memeriksa kualitas kode & linting**:
  ```bash
  dart analyze
  ```
* **Menjalankan pengujian (automated tests)**:
  ```bash
  flutter test
  ```
