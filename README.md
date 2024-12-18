# 🛍️ Aplikasi Online Shop - Flutter UI

## 🎯 Deskripsi Proyek

Ini adalah proyek Flutter yang menampilkan **desain modern UI untuk aplikasi online shop**. Aplikasi ini memiliki design yang bersih dan responsif, cocok untuk aplikasi e-commerce. Implementasi saat ini berfokus pada **silicing UI** sebagai bagian dari tugas **Motion Lab**, dan belum memiliki fungsi backend.

## ✨ Fitur

- **Splash Screen:**
  - Layar pembuka yang menarik yang muncul saat aplikasi diluncurkan.
- **Halaman Login:**
  - Halaman untuk pengguna masuk menggunakan kredensial mereka.
- **Halaman Register:**
  - Halaman untuk pengguna baru mendaftar akun mereka.
- **Halaman Home:**
  - Layout bersih dengan **filter kategori**.
  - Menampilkan grid product **best-seller** dengan gambar, nama, dan harga produk.
  - Ikon hati untuk menandai produk favorit(belum berfungsi).
- **Bottom Navigation Bar:**
  - Navigasi mudah dengan ikon untuk Home, Kategori, Favorit, dan Profil.
- **Desain Modern**
  - Layout responsif untuk berbagai ukuran layar.
  - Tampilan minimalis namun menarik.

## ✨ Fitur yang Telah Dibuat

1. **Halaman Cart (Keranjang Belanja)**

   - Menampilkan daftar item yang dimasukkan ke keranjang.
   - Tombol **+/-** untuk menambah atau mengurangi jumlah item.
   - Tombol **"Buy Now"** yang mengarahkan ke halaman Invoice.

2. **Halaman Invoice**

   - Menampilkan informasi transaksi seperti:
     - Nama Pemesan: `Indra Mahesa`
     - Email Pemesan: `indramahesa@gmail.com`
     - Total Harga: `$66.00`
   - Tombol **"Back to Home"** dengan lebar penuh yang mengarahkan kembali ke halaman utama.

3. **Kontrol State**
   - Menggunakan **GetX** sebagai state management untuk kontrol item pada cart.

## 📸 Preview

### **Preview**

![Tampilan Online Shop](assets/images/preview.png)

### **Halaman Cart**

![Tampilan Cart Page](assets/images/mycart.png)

### **Halaman Invoice**

![Tampilan Invoice Page](assets/images/invoice.png)

## 🛠️ Teknologi yang Digunakan

- **Flutter**: Framework utama untuk pengembangan aplikasi.
- **Dart**: Bahasa pemrograman untuk logika aplikasi.
- **Widget**:
  - Stateless dan Stateful Widgets.
  - GridView untuk menampilkan produk.
- **GetX**: State management untuk kontrol kuantitas item.
