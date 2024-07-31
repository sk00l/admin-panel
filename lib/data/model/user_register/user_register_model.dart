import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_model.freezed.dart';
part 'user_register_model.g.dart';

@freezed
class UserRegisterModel with _$UserRegisterModel {
  const factory UserRegisterModel({
    final String? email,
    final String? password,
    final String? uid,
  }) = _UserRegisterModel;

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterModelFromJson(json);
}
