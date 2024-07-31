// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegisterModelImpl _$$UserRegisterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$UserRegisterModelImplToJson(
        _$UserRegisterModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'uid': instance.uid,
    };
