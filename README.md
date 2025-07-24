# 🐾 Klinik Hewan App – Final Project Mobile Flutter

*Dibuat sebagai Tugas Akhir Mata Kuliah Mobile Programming – Semester 3*

Aplikasi mobile ini merupakan sistem manajemen data klinik hewan berbasis Flutter. Aplikasi memungkinkan admin atau petugas klinik untuk mencatat dan mengelola data hewan, dokter, kesehatan, obat, dan perkembangan hewan secara efisien melalui antarmuka mobile yang modern dan responsif.

---

## 📱 Fitur Utama Aplikasi

🔐 **Login User** – Autentikasi untuk admin (User terdaftar)

👩‍⚕️ **Manajemen Dokter** – Tambah, ubah, dan hapus data dokter (NIP, nama)

🐶 **Manajemen Hewan** – Kelola data hewan: nama, jenis, dan pemilik

🏥 **Riwayat Kesehatan** – Catat gejala, diagnosis, tindakan, dan catatan kesehatan

💊 **Data Obat** – Tambahkan obat lengkap dengan deskripsi dan harga

📈 **Perkembangan Hewan** – Pantau berat badan, tinggi, dan foto hewan dari waktu ke waktu

📂 **Database Relasional** – Semua data tersimpan terhubung di database MySQL (via API Laravel atau local emulator)

🎨 **UI Responsif & Modern** – Menggunakan Flutter + Material Design

---

## 🧠 Arsitektur & Struktur Model (Folder `models/`)

```plaintext
models/
├── dokter.dart         // Data dokter (id, nama, NIP)
├── hewan.dart          // Data hewan (id, nama_hewan, jenis, pemilik)
├── kesehatan.dart      // Data kesehatan hewan
├── obat.dart           // Informasi obat (id, nama, deskripsi, harga)
├── perkembangan.dart   // Data perkembangan (id, hewan_id, tanggal, berat, tinggi, foto)
└── user.dart           // Data user (autentikasi login)
```

---

## 🔗 Backend & Database

Aplikasi ini terhubung dengan backend Laravel (REST API) yang menggunakan database **MySQL (MariaDB)**. Berikut adalah skema tabel utama:

* `users` – Untuk login admin
* `dokter` – Data dokter
* `hewan` – Data hewan peliharaan
* `kesehatan` – Riwayat kesehatan
* `obat` – Informasi obat
* `perkembangan` – Data perkembangan hewan
* Semua tabel mendukung relasi (contoh: `hewan_id` digunakan di tabel `kesehatan` dan `perkembangan`)

---

## 📦 Teknologi yang Digunakan

| Stack                  | Tools                                                 |
| ---------------------- | ----------------------------------------------------- |
| **Frontend**           | Flutter SDK, Dart                                     |
| **Backend (Opsional)** | Laravel (API)                                         |
| **Database**           | MySQL / MariaDB                                       |
| **State Management**   | Provider / GetX / Bloc (tergantung implementasi kamu) |
| **Authentication**     | Login berbasis email & password                       |
| **HTTP Client**        | `http` package Flutter                                |

---

## 🚀 Cara Menjalankan Aplikasi

### 💻 Persiapan

1. Install **Flutter SDK** dan **Android Studio / VS Code**
2. Clone project Flutter:

```bash
git clone https://github.com/atikfriana/flutter-klinik-hewan.git
cd flutter-klinik-hewan
```

3. Jalankan pub get:

```bash
flutter pub get
```

4. (Jika pakai API Laravel) Pastikan Laravel backend sudah berjalan di localhost atau host publik.

5. Jalankan emulator atau device:

```bash
flutter run
```

---

## 🖼️ UI Preview (Screens)

| Layar           | Keterangan            |
| --------------- | --------------------- |
| 🏠 Home         | Tampilan awal         |
| 👤 Login        | Form login admin      |
| 🐶 Hewan        | Daftar & tambah hewan |
| 🩺 Kesehatan    | Riwayat medis         |
| 💊 Obat         | Info & harga obat     |
| 📈 Perkembangan | Berat, tinggi, & foto |

---

## ✨ Credits

* **Framework Mobile:** Flutter
* **Backend (jika ada):** Laravel
* **Database:** MySQL / MariaDB
* **Icons & Assets:** \[Material Icons], Heroicons

---

## 📄 Lisensi

MIT License © 2025 – Atika Arifiana
