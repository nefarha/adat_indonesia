
# Dokumentasi Proyek Adat Indonesia

## Ringkasan Aplikasi

Aplikasi "Adat Indonesia" adalah sebuah aplikasi mobile yang bertujuan untuk memberikan informasi mengenai berbagai adat dan budaya yang ada di Indonesia. Pengguna dapat menjelajahi daftar adat, melihat detail dari masing-masing adat, serta melihat model 3D dari rumah adat dalam mode Augmented Reality (AR).

## Struktur Proyek

Proyek ini menggunakan Flutter dan mengikuti struktur proyek yang diorganisir dengan baik, memisahkan antara data, modul (fitur), dan routing.

```
lib/
├── adat_indonesia_app.dart
├── main.dart
└── app/
    ├── data/
    │   ├── enums/
    │   ├── models/
    │   └── utils/
    ├── modules/
    │   ├── AdatDetail/
    │   ├── AdatList/
    │   ├── home/
    │   └── ModelViewer/
    └── routes/
        ├── app_pages.dart
        └── app_routes.dart
```

### `lib/main.dart`

- **Fungsi:** Titik masuk utama aplikasi.
- **Isi:** Menginisialisasi dan menjalankan widget utama aplikasi, yaitu `AdatIndonesiaApp`.

### `lib/adat_indonesia_app.dart`

- **Fungsi:** Widget root dari aplikasi.
- **Isi:** Mengkonfigurasi `GetMaterialApp` dari package `get`, yang menangani routing, tema, dan state management. Aplikasi ini mendefinisikan tema kustom (`adatTheme`) yang digunakan di seluruh aplikasi.

### `lib/app/routes/`

- **`app_pages.dart`:** Mendefinisikan semua halaman (rute) yang ada di dalam aplikasi, beserta dengan binding controllernya.
- **`app_routes.dart`:** Mendefinisikan nama-nama rute sebagai konstanta untuk menghindari kesalahan pengetikan.

### `lib/app/data/`

- **`enums/`:** Berisi enum yang digunakan di dalam aplikasi, seperti `ERas` yang merepresentasikan suku/ras.
- **`models/`:** Berisi model data yang digunakan dalam aplikasi.
    - **`race_model.dart`:** Mendefinisikan `RaceModel` yang berisi informasi tentang adat, ciri bahasa, path gambar, dan contoh bahasa dari suatu suku. Model ini juga berisi data dummy yang digunakan dalam aplikasi.
- **`utils/`:** Berisi utility class seperti `colour_palette.dart` untuk manajemen warna dan `asset_url.dart` untuk path aset.

### `lib/app/modules/`

#### `home/`

- **Fungsi:** Halaman utama aplikasi.
- **`home_view.dart`:** Menampilkan halaman selamat datang dengan tombol "MULAI" yang akan mengarahkan pengguna ke halaman daftar adat.
- **`home_controller.dart`:** Controller untuk halaman utama (saat ini tidak memiliki logika khusus).

#### `AdatList/`

- **Fungsi:** Menampilkan daftar adat budaya.
- **`adat_list_view.dart`:** Menampilkan daftar adat dalam bentuk `ListView`. Setiap item dalam daftar dapat di-tap untuk melihat detailnya.
- **`adat_list_controller.dart`:** Mengambil data daftar adat dari `RaceModel.dummyModel`.

#### `AdatDetail/`

- **Fungsi:** Menampilkan detail dari adat yang dipilih.
- **`adat_detail_view.dart`:** Menampilkan informasi rinci tentang adat, termasuk sejarah, ciri bahasa, dan contoh bahasa. Terdapat juga `FloatingActionButton` untuk melihat model 3D rumah adat.
- **`adat_detail_controller.dart`:** Menerima data `RaceModel` dari halaman sebelumnya dan menyediakan fungsi untuk mengelompokkan contoh bahasa.

#### `ModelViewer/`

- **Fungsi:** Menampilkan model 3D rumah adat dengan fungsionalitas AR.
- **`model_viewer_view.dart`:** Menggunakan package `o3d` untuk menampilkan model 3D. Model yang ditampilkan dipilih berdasarkan data `ERas` yang diterima.
- **`model_viewer_controller.dart`:** Mengelola `O3DController` dan state dari model viewer, seperti status loading dan error.

## Package yang Digunakan

### Dependencies

- **`flutter`:** Framework utama untuk membangun aplikasi.
- **`cupertino_icons`:** Ikon gaya iOS.
- **`get`:** Package untuk state management, dependency injection, dan routing.
- **`google_fonts`:** Untuk menggunakan font dari Google Fonts.
- **`shimmer`:** Memberikan efek shimmer loading.
- **`glass`:** Untuk membuat efek "glassmorphism".
- **`json_annotation`:** Anotasi untuk `json_serializable`.
- **`freezed_annotation`:** Anotasi untuk `freezed`.
- **`path_provider`:** Untuk mendapatkan path direktori yang umum digunakan.
- **`o3d`:** Untuk menampilkan model 3D dan fungsionalitas AR.

### Dev Dependencies

- **`flutter_test`:** Untuk testing widget.
- **`flutter_lints`:** Aturan lint untuk menjaga kualitas kode.
- **`json_serializable`:** Generator kode untuk serialisasi JSON.
- **`build_runner`:** Untuk menjalankan generator kode.
- **`freezed`:** Generator kode untuk membuat model data yang immutable.
