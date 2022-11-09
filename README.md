# Tugas 7

**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
>Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal.
>
>Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
>Widget yang saya gunakan pada _project_ kali ini adalah:
>
>1. FloatingActionButton: Widget button berbentuk lingkaran.
>2. Text: Widget untuk menampilkan text.
>3. Row: Widget yang berfungsi untuk menampilkan widget-widget tersusun secara horizontal.
>4. Padding: Widget yang berfungsi untuk memberikan padding pada widget yang dimaksud.
>5. SizedBox: Widget yang saya gunakan untuk menghilangkan button "-" ketika angka masih 0.

**Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
>`setState()` memiliki fungsi yaitu untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut. Berdasarkan tugas ini, fungsi `_incrementCounter()` dan `_decrementCounter()` memanggil `setState()` kemudian mengubah nilai counter-nya.

**Jelaskan perbedaan antara `const` dengan `final`.
>`const` berfungsi untuk men-declare variabel yang immutable lalu value nya harus dipastikan sudah diketahui saat compile.
>
>`final` berfungsi untuk men-declare variabel immutable yang valuenya boleh belum diketahui atau sudah diketahui saat compile.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
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


##### _Dimitri Prima Nugraha | 2106750396 | PBP-F_