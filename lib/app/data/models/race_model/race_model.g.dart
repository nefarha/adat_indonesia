// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RaceModel _$RaceModelFromJson(Map<String, dynamic> json) => _RaceModel(
      ras: $enumDecode(_$ERasEnumMap, json['ras']),
      adat: json['adat'] as String,
      ciriBahasa: json['ciri_bahasa'] as String,
      imagePath: json['image_path'] as String,
      contohBahasa: (json['contoh_bahasa'] as List<dynamic>)
          .map((e) => LanguageTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RaceModelToJson(_RaceModel instance) =>
    <String, dynamic>{
      'ras': _$ERasEnumMap[instance.ras]!,
      'adat': instance.adat,
      'ciri_bahasa': instance.ciriBahasa,
      'image_path': instance.imagePath,
      'contoh_bahasa': instance.contohBahasa.map((e) => e.toJson()).toList(),
    };

const _$ERasEnumMap = {
  ERas.melayu: 'melayu',
  ERas.jawa: 'jawa',
  ERas.batak: 'batak',
  ERas.sunda: 'sunda',
  ERas.bali: 'bali',
  ERas.dayak: 'dayak',
};

_LanguageTypeModel _$LanguageTypeModelFromJson(Map<String, dynamic> json) =>
    _LanguageTypeModel(
      teks: json['teks'] as String,
      arti: json['arti'] as String,
      tingkat: json['tingkat'] as String?,
    );

Map<String, dynamic> _$LanguageTypeModelToJson(_LanguageTypeModel instance) =>
    <String, dynamic>{
      'teks': instance.teks,
      'arti': instance.arti,
      'tingkat': instance.tingkat,
    };
