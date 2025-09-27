import 'package:adat_indonesia/app/data/enums/e_ras.dart';
import 'package:adat_indonesia/app/data/utils/asset_url.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race_model.freezed.dart';
part 'race_model.g.dart';

@freezed
abstract class RaceModel with _$RaceModel {
  const factory RaceModel({
    required ERas ras,
    required String adat,
    required String ciriBahasa,
    required String imagePath,
    required List<LanguageTypeModel> contohBahasa,
  }) = _RaceModel;

  factory RaceModel.fromJson(Map<String, dynamic> json) =>
      _$RaceModelFromJson(json);

  static List<Map<String, dynamic>> dummyJson = [
    {
      "ras": "batak",
      "adat":
          "Adat Batak berkembang di wilayah Sumatera Utara, berpusat pada sistem marga (garis keturunan ayah). Struktur sosialnya kuat dengan prinsip Dalihan Na Tolu (tiga tungku adat): hula-hula, dongan tubu, dan boru. Adat ini banyak dipengaruhi oleh tradisi nenek moyang yang percaya pada roh leluhur.",
      "ciri_bahasa": "Tegas, lugas, penuh sapaan adat (horas, mauliate).",
      'image_path': AssetUrl.batakRumah,
      "contoh_bahasa": [
        {
          "teks": "Horas ma di hita sude",
          "arti": "Semoga kita semua sehat/selamat"
        },
        {"teks": "Mauliate godang", "arti": "Terima kasih banyak"},
        {"teks": "Sai horas ma hamu", "arti": "Semoga kamu sehat selalu"},
        {"teks": "Asa marsada hita", "arti": "Supaya kita bersatu"}
      ]
    },
    {
      "ras": "melayu",
      "adat":
          "Adat Melayu berkembang di pesisir Sumatera, Semenanjung Malaya, hingga Kalimantan. Karena letaknya strategis, adat ini dipengaruhi budaya Islam, perdagangan India, dan kolonial. Adat Melayu menjunjung tinggi prinsip 'adat bersendi syarak, syarak bersendi Kitabullah'.",
      "ciri_bahasa": "Lembut, puitis, sering pakai pepatah atau peribahasa.",
      'image_path': AssetUrl.melayuRumah,
      "contoh_bahasa": [
        {
          "teks": "Takkan Melayu hilang di dunia",
          "arti": "Orang Melayu akan tetap ada selamanya"
        },
        {
          "teks": "Biar lambat asal selamat",
          "arti": "Lebih baik hati-hati daripada terburu-buru"
        },
        {
          "teks": "Ringan sama dijinjing, berat sama dipikul",
          "arti": "Gotong royong"
        },
        {"teks": "Seperti aur dengan tebing", "arti": "Hidup saling membantu"}
      ]
    },
    {
      "ras": "jawa",
      "adat":
          "Adat Jawa berakar dari kerajaan-kerajaan besar seperti Mataram, Majapahit, dan Demak. Adatnya menekankan keselarasan (rukun), hierarki sosial, serta pengaruh Hindu-Buddha dan Islam. Nilai utama adalah harmoni, unggah-ungguh (tata krama), dan sopan santun.",
      "ciri_bahasa":
          "Ada tingkatan (ngoko – akrab, krama – sopan), menekankan sopan santun.",
      'image_path': AssetUrl.jawaRumah,
      "contoh_bahasa": [
        {
          "tingkat": "ngoko",
          "teks": "Mangan ora mangan sing penting kumpul",
          "arti": "Makan tidak makan, yang penting kumpul"
        },
        {
          "tingkat": "ngoko",
          "teks": "Aku tresna karo kowe",
          "arti": "Aku cinta kamu"
        },
        {
          "tingkat": "ngoko",
          "teks": "Aja kagetan, aja gumunan",
          "arti": "Jangan gampang kaget, jangan mudah heran"
        },
        {
          "tingkat": "ngoko",
          "teks": "Urip iku urup",
          "arti": "Hidup itu harus memberi manfaat"
        },
        {"tingkat": "krama", "teks": "Kula nuwun", "arti": "Permisi"},
        {
          "tingkat": "krama",
          "teks": "Matur nuwun sanget",
          "arti": "Terima kasih banyak"
        },
        {
          "tingkat": "krama",
          "teks": "Kula kersa nyuwun pangapunten",
          "arti": "Saya ingin meminta maaf"
        }
      ]
    },
    {
      "ras": "sunda",
      "adat":
          "Adat Sunda berasal dari Jawa Barat dengan falsafah 'silih asah, silih asih, silih asuh'. Hidup rukun, gotong royong, dan ramah tamah jadi ciri khas masyarakat Sunda.",
      "ciri_bahasa": "Lembut, halus, ada tingkatan (lemes, sedang, kasar).",
      'image_path': AssetUrl.sundaRumah,
      "contoh_bahasa": [
        {
          "tingkat": "lemes",
          "teks": "Mangga tuang heula",
          "arti": "Silakan makan dulu"
        },
        {
          "tingkat": "lemes",
          "teks": "Hatur nuhun pisan",
          "arti": "Terima kasih banyak"
        },
        {"tingkat": "sedang", "teks": "Kumaha damang?", "arti": "Apa kabar?"},
        {"tingkat": "kasar", "teks": "Aing lapar", "arti": "Saya lapar"}
      ]
    },
    {
      "ras": "bali",
      "adat":
          "Adat Bali dipengaruhi oleh agama Hindu. Kehidupan masyarakat diatur dalam banjar dan upacara keagamaan sangat dominan.",
      "ciri_bahasa": "Ada tingkatan (alus, madya, kasar) sesuai lawan bicara.",
      'image_path': AssetUrl.baliRumah,
      "contoh_bahasa": [
        {"tingkat": "alus", "teks": "Ampura", "arti": "Maaf"},
        {"tingkat": "alus", "teks": "Suksma", "arti": "Terima kasih"},
        {"tingkat": "madya", "teks": "Beli teko", "arti": "Saya datang"},
        {"tingkat": "kasar", "teks": "Ci kenken?", "arti": "Apa kabar?"}
      ]
    },
    {
      "ras": "dayak",
      "adat":
          "Adat Dayak berkembang di pedalaman Kalimantan. Adatnya erat dengan alam, animisme, dan kepercayaan Kaharingan. Upacara adat seperti Tiwah (ritual kematian) menjadi salah satu ciri khas.",
      "ciri_bahasa":
          "Bahasa Dayak beragam sesuai sub-suku (Ngaju, Kenyah, Iban, Kayan). Umumnya tegas, dekat dengan kosakata alam.",
      'image_path': AssetUrl.dayakRumah,
      "contoh_bahasa": [
        {"teks": "Selamat lewu", "arti": "Selamat datang di kampung"},
        {"teks": "Hapakat basara", "arti": "Bermusyawarah untuk mufakat"},
        {"teks": "Lewu", "arti": "Kampung atau desa"}
      ]
    }
  ];
  static List<RaceModel> dummyModel = dummyJson
      .map(
        (e) => RaceModel.fromJson(e),
      )
      .toList();
}

@freezed
abstract class LanguageTypeModel with _$LanguageTypeModel {
  const factory LanguageTypeModel({
    required String teks,
    required String arti,
    required String? tingkat,
  }) = _LanguageTypeModel;

  factory LanguageTypeModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageTypeModelFromJson(json);
}
