// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get uid => throw _privateConstructorUsedError;
  String? get appliedDate => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  int? get viber => throw _privateConstructorUsedError;
  int? get whatsapp => throw _privateConstructorUsedError;
  int? get cell => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get github => throw _privateConstructorUsedError;
  String? get linkedIn => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get eName => throw _privateConstructorUsedError;
  int? get eNumber => throw _privateConstructorUsedError;
  String? get eRelation => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  NameLocalisedFields? get name => throw _privateConstructorUsedError;
  NameLocalisedFields? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? uid,
      String? appliedDate,
      String? picture,
      int? viber,
      int? whatsapp,
      int? cell,
      String? email,
      String? address,
      String? github,
      String? linkedIn,
      String? bio,
      String? eName,
      int? eNumber,
      String? eRelation,
      bool? isActive,
      bool? isAdmin,
      NameLocalisedFields? name,
      NameLocalisedFields? position});

  $NameLocalisedFieldsCopyWith<$Res>? get name;
  $NameLocalisedFieldsCopyWith<$Res>? get position;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? appliedDate = freezed,
    Object? picture = freezed,
    Object? viber = freezed,
    Object? whatsapp = freezed,
    Object? cell = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? github = freezed,
    Object? linkedIn = freezed,
    Object? bio = freezed,
    Object? eName = freezed,
    Object? eNumber = freezed,
    Object? eRelation = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
    Object? name = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      appliedDate: freezed == appliedDate
          ? _value.appliedDate
          : appliedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      viber: freezed == viber
          ? _value.viber
          : viber // ignore: cast_nullable_to_non_nullable
              as int?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as int?,
      cell: freezed == cell
          ? _value.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      github: freezed == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedIn: freezed == linkedIn
          ? _value.linkedIn
          : linkedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      eName: freezed == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String?,
      eNumber: freezed == eNumber
          ? _value.eNumber
          : eNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      eRelation: freezed == eRelation
          ? _value.eRelation
          : eRelation // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameLocalisedFields?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as NameLocalisedFields?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameLocalisedFieldsCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameLocalisedFieldsCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameLocalisedFieldsCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $NameLocalisedFieldsCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      String? appliedDate,
      String? picture,
      int? viber,
      int? whatsapp,
      int? cell,
      String? email,
      String? address,
      String? github,
      String? linkedIn,
      String? bio,
      String? eName,
      int? eNumber,
      String? eRelation,
      bool? isActive,
      bool? isAdmin,
      NameLocalisedFields? name,
      NameLocalisedFields? position});

  @override
  $NameLocalisedFieldsCopyWith<$Res>? get name;
  @override
  $NameLocalisedFieldsCopyWith<$Res>? get position;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? appliedDate = freezed,
    Object? picture = freezed,
    Object? viber = freezed,
    Object? whatsapp = freezed,
    Object? cell = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? github = freezed,
    Object? linkedIn = freezed,
    Object? bio = freezed,
    Object? eName = freezed,
    Object? eNumber = freezed,
    Object? eRelation = freezed,
    Object? isActive = freezed,
    Object? isAdmin = freezed,
    Object? name = freezed,
    Object? position = freezed,
  }) {
    return _then(_$UserModelImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      appliedDate: freezed == appliedDate
          ? _value.appliedDate
          : appliedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      viber: freezed == viber
          ? _value.viber
          : viber // ignore: cast_nullable_to_non_nullable
              as int?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as int?,
      cell: freezed == cell
          ? _value.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      github: freezed == github
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedIn: freezed == linkedIn
          ? _value.linkedIn
          : linkedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      eName: freezed == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String?,
      eNumber: freezed == eNumber
          ? _value.eNumber
          : eNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      eRelation: freezed == eRelation
          ? _value.eRelation
          : eRelation // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameLocalisedFields?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as NameLocalisedFields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {this.uid,
      this.appliedDate,
      this.picture,
      this.viber,
      this.whatsapp,
      this.cell,
      this.email,
      this.address,
      this.github,
      this.linkedIn,
      this.bio,
      this.eName,
      this.eNumber,
      this.eRelation,
      this.isActive,
      this.isAdmin,
      this.name,
      this.position})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? uid;
  @override
  final String? appliedDate;
  @override
  final String? picture;
  @override
  final int? viber;
  @override
  final int? whatsapp;
  @override
  final int? cell;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? github;
  @override
  final String? linkedIn;
  @override
  final String? bio;
  @override
  final String? eName;
  @override
  final int? eNumber;
  @override
  final String? eRelation;
  @override
  final bool? isActive;
  @override
  final bool? isAdmin;
  @override
  final NameLocalisedFields? name;
  @override
  final NameLocalisedFields? position;

  @override
  String toString() {
    return 'UserModel(uid: $uid, appliedDate: $appliedDate, picture: $picture, viber: $viber, whatsapp: $whatsapp, cell: $cell, email: $email, address: $address, github: $github, linkedIn: $linkedIn, bio: $bio, eName: $eName, eNumber: $eNumber, eRelation: $eRelation, isActive: $isActive, isAdmin: $isAdmin, name: $name, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.appliedDate, appliedDate) ||
                other.appliedDate == appliedDate) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.viber, viber) || other.viber == viber) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.cell, cell) || other.cell == cell) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.github, github) || other.github == github) &&
            (identical(other.linkedIn, linkedIn) ||
                other.linkedIn == linkedIn) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.eName, eName) || other.eName == eName) &&
            (identical(other.eNumber, eNumber) || other.eNumber == eNumber) &&
            (identical(other.eRelation, eRelation) ||
                other.eRelation == eRelation) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      appliedDate,
      picture,
      viber,
      whatsapp,
      cell,
      email,
      address,
      github,
      linkedIn,
      bio,
      eName,
      eNumber,
      eRelation,
      isActive,
      isAdmin,
      name,
      position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {final String? uid,
      final String? appliedDate,
      final String? picture,
      final int? viber,
      final int? whatsapp,
      final int? cell,
      final String? email,
      final String? address,
      final String? github,
      final String? linkedIn,
      final String? bio,
      final String? eName,
      final int? eNumber,
      final String? eRelation,
      final bool? isActive,
      final bool? isAdmin,
      final NameLocalisedFields? name,
      final NameLocalisedFields? position}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get uid;
  @override
  String? get appliedDate;
  @override
  String? get picture;
  @override
  int? get viber;
  @override
  int? get whatsapp;
  @override
  int? get cell;
  @override
  String? get email;
  @override
  String? get address;
  @override
  String? get github;
  @override
  String? get linkedIn;
  @override
  String? get bio;
  @override
  String? get eName;
  @override
  int? get eNumber;
  @override
  String? get eRelation;
  @override
  bool? get isActive;
  @override
  bool? get isAdmin;
  @override
  NameLocalisedFields? get name;
  @override
  NameLocalisedFields? get position;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NameLocalisedFields _$NameLocalisedFieldsFromJson(Map<String, dynamic> json) {
  return _NameLocalisedFields.fromJson(json);
}

/// @nodoc
mixin _$NameLocalisedFields {
  String? get en => throw _privateConstructorUsedError;
  String? get ne => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameLocalisedFieldsCopyWith<NameLocalisedFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameLocalisedFieldsCopyWith<$Res> {
  factory $NameLocalisedFieldsCopyWith(
          NameLocalisedFields value, $Res Function(NameLocalisedFields) then) =
      _$NameLocalisedFieldsCopyWithImpl<$Res, NameLocalisedFields>;
  @useResult
  $Res call({String? en, String? ne});
}

/// @nodoc
class _$NameLocalisedFieldsCopyWithImpl<$Res, $Val extends NameLocalisedFields>
    implements $NameLocalisedFieldsCopyWith<$Res> {
  _$NameLocalisedFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ne = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ne: freezed == ne
          ? _value.ne
          : ne // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameLocalisedFieldsImplCopyWith<$Res>
    implements $NameLocalisedFieldsCopyWith<$Res> {
  factory _$$NameLocalisedFieldsImplCopyWith(_$NameLocalisedFieldsImpl value,
          $Res Function(_$NameLocalisedFieldsImpl) then) =
      __$$NameLocalisedFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en, String? ne});
}

/// @nodoc
class __$$NameLocalisedFieldsImplCopyWithImpl<$Res>
    extends _$NameLocalisedFieldsCopyWithImpl<$Res, _$NameLocalisedFieldsImpl>
    implements _$$NameLocalisedFieldsImplCopyWith<$Res> {
  __$$NameLocalisedFieldsImplCopyWithImpl(_$NameLocalisedFieldsImpl _value,
      $Res Function(_$NameLocalisedFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ne = freezed,
  }) {
    return _then(_$NameLocalisedFieldsImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ne: freezed == ne
          ? _value.ne
          : ne // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameLocalisedFieldsImpl implements _NameLocalisedFields {
  const _$NameLocalisedFieldsImpl({this.en, this.ne});

  factory _$NameLocalisedFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameLocalisedFieldsImplFromJson(json);

  @override
  final String? en;
  @override
  final String? ne;

  @override
  String toString() {
    return 'NameLocalisedFields(en: $en, ne: $ne)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameLocalisedFieldsImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ne, ne) || other.ne == ne));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, ne);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameLocalisedFieldsImplCopyWith<_$NameLocalisedFieldsImpl> get copyWith =>
      __$$NameLocalisedFieldsImplCopyWithImpl<_$NameLocalisedFieldsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameLocalisedFieldsImplToJson(
      this,
    );
  }
}

abstract class _NameLocalisedFields implements NameLocalisedFields {
  const factory _NameLocalisedFields({final String? en, final String? ne}) =
      _$NameLocalisedFieldsImpl;

  factory _NameLocalisedFields.fromJson(Map<String, dynamic> json) =
      _$NameLocalisedFieldsImpl.fromJson;

  @override
  String? get en;
  @override
  String? get ne;
  @override
  @JsonKey(ignore: true)
  _$$NameLocalisedFieldsImplCopyWith<_$NameLocalisedFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
