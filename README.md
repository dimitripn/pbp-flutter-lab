# Tugas 7

**1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**
>Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal.
>
>Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
>Widget yang saya gunakan pada _project_ kali ini adalah:
>
>1. FloatingActionButton: Widget button berbentuk lingkaran.
>2. Text: Widget untuk menampilkan text.
>3. Row: Widget yang berfungsi untuk menampilkan widget-widget tersusun secara horizontal.
>4. Padding: Widget yang berfungsi untuk memberikan padding pada widget yang dimaksud.
>5. SizedBox: Widget yang saya gunakan untuk menghilangkan button "-" ketika angka masih 0.

**3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**
>`setState()` memiliki fungsi yaitu untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut. Berdasarkan tugas ini, fungsi `_incrementCounter()` dan `_decrementCounter()` memanggil `setState()` kemudian mengubah nilai counter-nya.

**4. Jelaskan perbedaan antara `const` dengan `final`.**
>`const` berfungsi untuk men-declare variabel yang immutable lalu value nya harus dipastikan sudah diketahui saat compile.
>
>`final` berfungsi untuk men-declare variabel immutable yang valuenya boleh belum diketahui atau sudah diketahui saat compile.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
>Berikut cara saya mengimplementasikan tugas ini:
>
>1. Membuat app Flutter baru dengan menjalankan perintah `flutter create counter_7` di CMD.
>2. Melakukan perubahan pada `main.dart` yang terletak di dalam folder lib.
>3. Membuat fungsi `_decrementCounter()` untuk pengurangannya.
>4. Menambahkan widget `floatingActionButton` dengan flex row dan padding serta alignment spaceBetween.
>5. Membuat conditional pada widget `floatingActionButton` bila value counter masih 0, maka akan digantikan dengan `sizedBox` transparan.
>6. Mem-_bind_ kedua button dengan fungsi increment atau decrement yang tadi sudah dibuat.
>7. Membuat widget `Text` dengan conditional berisi warna text, merah bila value counter genap dan biru bila value counter ganjil.
>8. Melakukan testing dengan menjalankan perintah `flutter run` di CMD.

# Tugas 8

**1. Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.**
>Perbedaan antara `Navigator.push` dan `Navigator.pushReplacement` adalah pada `Navigator.push` akan menambahkan route baru ke stack, sedangkan `Navigator.pushReplacement` akan mengganti route yang ada dengan route baru.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
>Widget yang saya gunakan pada _project_ kali ini adalah:
>
>1. Scaffold: Widget yang berfungsi sebagai _container_ untuk material design.
>2. AppBar: Widget yang berfungsi untuk menampilkan app bar.
>3. Text: Widget untuk menampilkan text.
>4. Drawer: Widget yang berfungsi untuk menampilkan menu navigasi.
>5. ListTile: Widget yang berfungsi untuk menampilkan list.
>6. Form: Widget yang berfungsi untuk membuat form.
>7. TextFormField: Widget yang berfungsi untuk membuat form input.
>8. DropdownButton: Widget yang berfungsi untuk membuat dropdown button.
>9. DropdownMenuItem: Widget yang berfungsi untuk membuat item dropdown button.
>10. TextButton: Widget yang berfungsi untuk membuat button.
>11. Navigator: Widget yang berfungsi untuk navigasi antar halaman.
>12. Card: Widget yang berfungsi untuk membuat card.
>13. Navigator: Widget yang berfungsi untuk navigasi antar halaman.
>14. Row and Column: Widget yang berfungsi untuk menampilkan widget-widget tersusun secara horizontal dan vertikal.

**3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).**
>Event yang ada pada Flutter adalah:
>
>1. `onPressed`: Event yang terjadi ketika button ditekan.
>2. `onTap`: Event yang terjadi ketika widget ditekan.
>3. `onChanged`: Event yang terjadi ketika value dari widget berubah.
>4. `onSaved`: Event yang terjadi ketika value dari widget disimpan.

**4. Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.**
>Layar baru akan masuk ke dalam navigation stack dan layar tersebut akan berada di puncak stack (`Navigator.push`). Proses pergantian halaman seolah-olah melakukan pop pada layar yang berada di puncak stack, lalu melakukan push layar baru ke dalam stack (`Navigator.pushReplacement`). Proses Navigation pop terjadi saat mengeluarkan layar dari dalam stack.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
>Berikut cara saya mengimplementasikan tugas ini:
>
>1. Membuat Drawer dengan routing ke counter_7, form, show_budget
>2. Membuat model Budget
>3. Membuat form untuk mendapatkan judul, nominal, jenis, dan tanggal dari user
>4. Memasukkan data yang telah didapatkan dari form ke dalam list yang berisi Budget
>5. Membuat halaman show_budget untuk menampilkan data yang telah dimasukkan ke dalam list

# Tugas 9

**1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
>Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Hal ini tidak lebih baik daripada membuat model sebelum melakukan pengambilan data JSON karena kita tidak tahu apakah value-value dari item tersebut dynamic atau tidak.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
>Widget yang saya gunakan pada _project_ kali ini adalah:
>
>1. Checkbox: Widget yang berfungsi untuk membuat checkbox yang memiliki suatu event onChange.
>2. Expanded: Widget yang berfungsi untuk membuat text tidak overflow.
>3. FutureBuilder: Widget yang berfungsi untuk membuat widget berdasarkan snapshot yang diambil dari Future.

**3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.**
>1. Spesifikasikan dahulu model yang akan digunakan untuk menampung data dari json.
>2. Membuat fungsi untuk melakukan fetch data untuk mengiterasi tiap data dari json.
>3. Data tersebut diambil melalui request URL yang diinginkan dan mengembalikan sebuah response.
>4. Response tersebut diubah menjadi Dart object dengan menggunakan `jsonDecode()`.
>5. Setiap object akan dilakukan loop dan disimpan ke dalam list.
>6. Lalu iterasi dari list tersebut akan digunakan untuk menampilkan data pada flutter.

**4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
>Berikut cara saya mengimplementasikan tugas ini:
>
>1. Menambahkan navigasi ke mywatchlist pada drawer
>2. Menambahkan depedency http
>3. Membuat model untuk data json
>4. Membuat function untuk mengambil data json
>5. Menampilkan data dalam bentuk inkwell
>6. Membuat halaman detail untuk watchlist


##### _Dimitri Prima Nugraha | 2106750396 | PBP-F_
