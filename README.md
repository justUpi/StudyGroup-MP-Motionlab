![GitHub repo size](https://img.shields.io/github/repo-size/justUpi/StudyGroup-MP-Motionlab)
![GitHub stars](https://img.shields.io/github/stars/justUpi/StudyGroup-MP-Motionlab?style=social)

# Motion Lab Learning Report Week - 0 🚀
Repository ini berisi dokumentasi perjalanan pembelajaran selama minggu pertama internship di Motion Lab.

## Daftar Isi 📚
1. [Penjelasan Singkat](#penjelasan-singkat) - Apa itu Git?
2. [Perintah Dasar](#perintah-dasar) - Perintah penting dalam Git.
3. [Penjelasan SSH](#penjelasan-ssh) - Keamanan akses GitHub.
4. [Langkah-langkah Konfigurasi SSH](#langkah-langkah-konfigurasi-ssh) - Cara konfigurasi SSH key.
5. [Penutup](#penutup) - Kesimpulan dan harapan.

### Penjelasan Singkat
**Apa itu Git?** Git adalah sistem kontrol versi terdistribusi yang memungkinkan pengembang melacak perubahan kode, bekerja secara kolaboratif, dan mengelola versi kode secara efisien.

Git sangat berguna untuk:
- Menyimpan riwayat perubahan kode.
- Bekerja secara paralel dengan tim.
- Menggabungkan kontribusi dari berbagai pengembang.

### Perintah Dasar
Berikut adalah perintah-perintah dasar yang biasa digunakan:
| Perintah        | Fungsi                                           |
|------------------|-------------------------------------------------|
| `git init`       | Membuat repository Git baru.                   |
| `git clone`      | Mengkloning repository ke komputer lokal.       |
| `git add <file>` | Menambahkan file ke staging area.              |
| `git commit`     | Menyimpan perubahan dengan pesan deskriptif.   |
| `git push`       | Mengunggah perubahan ke repository remote.     |
| `git pull`       | Mengambil perubahan terbaru dari repository.   |
| `git branch`     | Menampilkan daftar branch atau membuat branch baru.  |
| `git checkout <branch>` | Berpindah ke branch lain.               |
| `git merge <branch>` | Menggabungkan branch ke branch aktif.       |
| `git log`        | Menampilkan riwayat(history) commit.           |
| `git status`     | Menampilkan status file di repository lokal.    |

### Penjelasan SSH
SSH (Secure Shell) adalah cara aman untuk berkomunikasi antara komputermu dan server (seperti GitHub). Dengan SSH, kamu tidak perlu mengetik username dan password setiap kali berinteraksi dengan repository. Sebagai gantinya, kamu menggunakan "kunci SSH" (SSH key) yang terdiri dari dua bagian:
* **Public Key:** Kunci ini kamu unggah ke GitHub.
* **Private Key:** Kunci ini disimpan di komputermu, dan Git menggunakannya untuk mengenali bahwa itu benar-benar kamu.

**Keuntungan menggunakan SSH:**
1. Tidak perlu mengetik username dan password setiap kali mengakses repository.
2. Lebih aman karena menggunakan enkripsi

### Langkah-langkah konfigurasi SSH
1. Buat SSH key:
```
ssh-keygen -t rsa -b 4096 -C "email@example.com"
```
2. Tambahkan ke SSH agent:
```
ssh-add ~/.ssh/id_rsa
```
3. Salin public key ke GitHub (Settings > SSH and GPG Keys).
4. Tempel public key ke sana
5. Jalankan:
```
ssh -T git@github.com
```
untuk memastikan koneksi berhasil.

### Penutup
Selamat menggunakan Git dan GitHub! Jika ada kendala atau masukan, jangan sungkan untuk berbagi. Saya percaya bahwa kolaborasi dan pembelajaran bersama adalah kunci untuk berkembang. 🚀

Untuk pertanyaan atau diskusi, hubungi saya di [GitHub Issues](https://github.com/justUpi/repo/issues) atau email saya di upijangkung12@gmail.com.  
