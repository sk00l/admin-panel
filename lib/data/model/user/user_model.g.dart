// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String?,
      appliedDate: json['appliedDate'] as String?,
      picture: json['picture'] as String?,
      viber: (json['viber'] as num?)?.toInt(),
      whatsapp: (json['whatsapp'] as num?)?.toInt(),
      cell: (json['cell'] as num?)?.toInt(),
      email: json['email'] as String?,
      address: json['address'] as String?,
      github: json['github'] as String?,
      linkedIn: json['linkedIn'] as String?,
      bio: json['bio'] as String?,
      eName: json['eName'] as String?,
      eNumber: (json['eNumber'] as num?)?.toInt(),
      eRelation: json['eRelation'] as String?,
      isActive: json['isActive'] as bool?,
      isAdmin: json['isAdmin'] as bool?,
      name: json['name'] == null
          ? null
          : NameLocalisedFields.fromJson(json['name'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : NameLocalisedFields.fromJson(
              json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'appliedDate': instance.appliedDate,
      'picture': instance.picture,
      'viber': instance.viber,
      'whatsapp': instance.whatsapp,
      'cell': instance.cell,
      'email': instance.email,
      'address': instance.address,
      'github': instance.github,
      'linkedIn': instance.linkedIn,
      'bio': instance.bio,
      'eName': instance.eName,
      'eNumber': instance.eNumber,
      'eRelation': instance.eRelation,
      'isActive': instance.isActive,
      'isAdmin': instance.isAdmin,
      'name': instance.name,
      'position': instance.position,
    };

_$NameLocalisedFieldsImpl _$$NameLocalisedFieldsImplFromJson(
        Map<String, dynamic> json) =>
    _$NameLocalisedFieldsImpl(
      en: json['en'] as String?,
      ne: json['ne'] as String?,
    );

Map<String, dynamic> _$$NameLocalisedFieldsImplToJson(
        _$NameLocalisedFieldsImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ne': instance.ne,
    };
