// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'race_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RaceModel {
  ERas get ras;
  String get adat;
  String get ciriBahasa;
  String get imagePath;
  List<LanguageTypeModel> get contohBahasa;

  /// Create a copy of RaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RaceModelCopyWith<RaceModel> get copyWith =>
      _$RaceModelCopyWithImpl<RaceModel>(this as RaceModel, _$identity);

  /// Serializes this RaceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RaceModel &&
            (identical(other.ras, ras) || other.ras == ras) &&
            (identical(other.adat, adat) || other.adat == adat) &&
            (identical(other.ciriBahasa, ciriBahasa) ||
                other.ciriBahasa == ciriBahasa) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other.contohBahasa, contohBahasa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ras, adat, ciriBahasa, imagePath,
      const DeepCollectionEquality().hash(contohBahasa));

  @override
  String toString() {
    return 'RaceModel(ras: $ras, adat: $adat, ciriBahasa: $ciriBahasa, imagePath: $imagePath, contohBahasa: $contohBahasa)';
  }
}

/// @nodoc
abstract mixin class $RaceModelCopyWith<$Res> {
  factory $RaceModelCopyWith(RaceModel value, $Res Function(RaceModel) _then) =
      _$RaceModelCopyWithImpl;
  @useResult
  $Res call(
      {ERas ras,
      String adat,
      String ciriBahasa,
      String imagePath,
      List<LanguageTypeModel> contohBahasa});
}

/// @nodoc
class _$RaceModelCopyWithImpl<$Res> implements $RaceModelCopyWith<$Res> {
  _$RaceModelCopyWithImpl(this._self, this._then);

  final RaceModel _self;
  final $Res Function(RaceModel) _then;

  /// Create a copy of RaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ras = null,
    Object? adat = null,
    Object? ciriBahasa = null,
    Object? imagePath = null,
    Object? contohBahasa = null,
  }) {
    return _then(_self.copyWith(
      ras: null == ras
          ? _self.ras
          : ras // ignore: cast_nullable_to_non_nullable
              as ERas,
      adat: null == adat
          ? _self.adat
          : adat // ignore: cast_nullable_to_non_nullable
              as String,
      ciriBahasa: null == ciriBahasa
          ? _self.ciriBahasa
          : ciriBahasa // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      contohBahasa: null == contohBahasa
          ? _self.contohBahasa
          : contohBahasa // ignore: cast_nullable_to_non_nullable
              as List<LanguageTypeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RaceModel implements RaceModel {
  const _RaceModel(
      {required this.ras,
      required this.adat,
      required this.ciriBahasa,
      required this.imagePath,
      required final List<LanguageTypeModel> contohBahasa})
      : _contohBahasa = contohBahasa;
  factory _RaceModel.fromJson(Map<String, dynamic> json) =>
      _$RaceModelFromJson(json);

  @override
  final ERas ras;
  @override
  final String adat;
  @override
  final String ciriBahasa;
  @override
  final String imagePath;
  final List<LanguageTypeModel> _contohBahasa;
  @override
  List<LanguageTypeModel> get contohBahasa {
    if (_contohBahasa is EqualUnmodifiableListView) return _contohBahasa;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contohBahasa);
  }

  /// Create a copy of RaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RaceModelCopyWith<_RaceModel> get copyWith =>
      __$RaceModelCopyWithImpl<_RaceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RaceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RaceModel &&
            (identical(other.ras, ras) || other.ras == ras) &&
            (identical(other.adat, adat) || other.adat == adat) &&
            (identical(other.ciriBahasa, ciriBahasa) ||
                other.ciriBahasa == ciriBahasa) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._contohBahasa, _contohBahasa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ras, adat, ciriBahasa, imagePath,
      const DeepCollectionEquality().hash(_contohBahasa));

  @override
  String toString() {
    return 'RaceModel(ras: $ras, adat: $adat, ciriBahasa: $ciriBahasa, imagePath: $imagePath, contohBahasa: $contohBahasa)';
  }
}

/// @nodoc
abstract mixin class _$RaceModelCopyWith<$Res>
    implements $RaceModelCopyWith<$Res> {
  factory _$RaceModelCopyWith(
          _RaceModel value, $Res Function(_RaceModel) _then) =
      __$RaceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ERas ras,
      String adat,
      String ciriBahasa,
      String imagePath,
      List<LanguageTypeModel> contohBahasa});
}

/// @nodoc
class __$RaceModelCopyWithImpl<$Res> implements _$RaceModelCopyWith<$Res> {
  __$RaceModelCopyWithImpl(this._self, this._then);

  final _RaceModel _self;
  final $Res Function(_RaceModel) _then;

  /// Create a copy of RaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ras = null,
    Object? adat = null,
    Object? ciriBahasa = null,
    Object? imagePath = null,
    Object? contohBahasa = null,
  }) {
    return _then(_RaceModel(
      ras: null == ras
          ? _self.ras
          : ras // ignore: cast_nullable_to_non_nullable
              as ERas,
      adat: null == adat
          ? _self.adat
          : adat // ignore: cast_nullable_to_non_nullable
              as String,
      ciriBahasa: null == ciriBahasa
          ? _self.ciriBahasa
          : ciriBahasa // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      contohBahasa: null == contohBahasa
          ? _self._contohBahasa
          : contohBahasa // ignore: cast_nullable_to_non_nullable
              as List<LanguageTypeModel>,
    ));
  }
}

/// @nodoc
mixin _$LanguageTypeModel {
  String get teks;
  String get arti;
  String? get tingkat;

  /// Create a copy of LanguageTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageTypeModelCopyWith<LanguageTypeModel> get copyWith =>
      _$LanguageTypeModelCopyWithImpl<LanguageTypeModel>(
          this as LanguageTypeModel, _$identity);

  /// Serializes this LanguageTypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageTypeModel &&
            (identical(other.teks, teks) || other.teks == teks) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.tingkat, tingkat) || other.tingkat == tingkat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, teks, arti, tingkat);

  @override
  String toString() {
    return 'LanguageTypeModel(teks: $teks, arti: $arti, tingkat: $tingkat)';
  }
}

/// @nodoc
abstract mixin class $LanguageTypeModelCopyWith<$Res> {
  factory $LanguageTypeModelCopyWith(
          LanguageTypeModel value, $Res Function(LanguageTypeModel) _then) =
      _$LanguageTypeModelCopyWithImpl;
  @useResult
  $Res call({String teks, String arti, String? tingkat});
}

/// @nodoc
class _$LanguageTypeModelCopyWithImpl<$Res>
    implements $LanguageTypeModelCopyWith<$Res> {
  _$LanguageTypeModelCopyWithImpl(this._self, this._then);

  final LanguageTypeModel _self;
  final $Res Function(LanguageTypeModel) _then;

  /// Create a copy of LanguageTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teks = null,
    Object? arti = null,
    Object? tingkat = freezed,
  }) {
    return _then(_self.copyWith(
      teks: null == teks
          ? _self.teks
          : teks // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _self.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      tingkat: freezed == tingkat
          ? _self.tingkat
          : tingkat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LanguageTypeModel implements LanguageTypeModel {
  const _LanguageTypeModel(
      {required this.teks, required this.arti, required this.tingkat});
  factory _LanguageTypeModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageTypeModelFromJson(json);

  @override
  final String teks;
  @override
  final String arti;
  @override
  final String? tingkat;

  /// Create a copy of LanguageTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageTypeModelCopyWith<_LanguageTypeModel> get copyWith =>
      __$LanguageTypeModelCopyWithImpl<_LanguageTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LanguageTypeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageTypeModel &&
            (identical(other.teks, teks) || other.teks == teks) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.tingkat, tingkat) || other.tingkat == tingkat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, teks, arti, tingkat);

  @override
  String toString() {
    return 'LanguageTypeModel(teks: $teks, arti: $arti, tingkat: $tingkat)';
  }
}

/// @nodoc
abstract mixin class _$LanguageTypeModelCopyWith<$Res>
    implements $LanguageTypeModelCopyWith<$Res> {
  factory _$LanguageTypeModelCopyWith(
          _LanguageTypeModel value, $Res Function(_LanguageTypeModel) _then) =
      __$LanguageTypeModelCopyWithImpl;
  @override
  @useResult
  $Res call({String teks, String arti, String? tingkat});
}

/// @nodoc
class __$LanguageTypeModelCopyWithImpl<$Res>
    implements _$LanguageTypeModelCopyWith<$Res> {
  __$LanguageTypeModelCopyWithImpl(this._self, this._then);

  final _LanguageTypeModel _self;
  final $Res Function(_LanguageTypeModel) _then;

  /// Create a copy of LanguageTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? teks = null,
    Object? arti = null,
    Object? tingkat = freezed,
  }) {
    return _then(_LanguageTypeModel(
      teks: null == teks
          ? _self.teks
          : teks // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _self.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      tingkat: freezed == tingkat
          ? _self.tingkat
          : tingkat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
