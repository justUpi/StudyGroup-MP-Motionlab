# Motion Lab Learning Report Week - 0 🚀
This repository is made from reporting my study journey in Motion Lab

## Daftar Isi 📚
-[Penjelasan Singkat](#Penjelasan-Singkat)
-[Perintah Dasar](#Perintah-Dasar)
-[Penjelasan SSH](#Penjelasan-SSH)
-[Langkah Penggunaan SSH](#Langkah-Penggunaan-SSH)
-[Penutup](#Penutup)

### Penjelasan Singkat
Apa itu Git? Git adalah sistem kontrol versi terdistribusi yang memungkinkan pengembang melacak perubahan kode, bekerja secara kolaboratif, dan mengelola versi kode secara efisien.

###Perintah Dasar
Berikut adalah perintah - perintah dasar yang biasa digunakan:
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

###Penjelasan SSH
SSH (Secure Shell) adalah cara aman untuk berkomunikasi antara komputermu dan server (seperti GitHub). Dengan SSH, kamu tidak perlu mengetik username dan password setiap kali berinteraksi dengan repository. Sebagai gantinya, kamu menggunakan "kunci SSH" (SSH key) yang terdiri dari dua bagian:
* Public Key: Kunci ini kamu unggah ke GitHub.
* Private Key: Kunci ini disimpan di komputermu, dan Git menggunakannya untuk mengenali bahwa itu benar-benar kamu.

###Langkah Penggunaan SSH
* Buat SSH key:
```
ssh-keygen -t rsa -b 4096 -C "email@example.com"
```
* Tambahkan ke SSH agent:
```
ssh-add ~/.ssh/id_rsa
```
* Salin dan tambahkan ke GitHub (Settings > SSH and GPG Keys).
* Tempel public key ke sana
* Jalankan
```
ssh -T git@github.com
```
untuk memastikan koneksi berhasil.

###Penutup
Selamat menggunakan Git dan GitHub! Jika ada kendala atau masukan, jangan sungkan untuk berbagi. Semoga kita bisa terus berkembang bersama di Motion Lab. 🚀
