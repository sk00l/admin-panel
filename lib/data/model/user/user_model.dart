import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    String? uid,
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
    NameLocalisedFields? position,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toMap() {
    var json = toJson();
    json["name"] = name?.toJson();
    json["position"] = position?.toJson();
    return json;
  }
}

@freezed
class NameLocalisedFields with _$NameLocalisedFields {
  const factory NameLocalisedFields({
    String? en,
    String? ne,
  }) = _NameLocalisedFields;

  factory NameLocalisedFields.fromJson(Map<String, dynamic> json) =>
      _$NameLocalisedFieldsFromJson(json);
}
