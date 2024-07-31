// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_details_bloc.dart';

enum UserDetailsStateEnum {
  initial,
  loading,
  success,
  failure,
  imagePicked,
  imagePicking,
}

class UserDetailsState extends Equatable {
  final UserDetailsStateEnum? userDetailsStateEnum;
  final List<UserModel>? userModelList;
  final UserModel? userModel;
  final String? error;
  final File? imageFile;
  const UserDetailsState({
    this.userDetailsStateEnum,
    this.userModelList,
    this.userModel,
    this.error,
    this.imageFile,
  });

  @override
  List<Object?> get props =>
      [userDetailsStateEnum, userModelList, userModel, error, imageFile];

  UserDetailsState copyWith({
    UserDetailsStateEnum? userDetailsStateEnum,
    List<UserModel>? userModelList,
    UserModel? userModel,
    String? error,
    File? imageFile,
  }) {
    return UserDetailsState(
      userDetailsStateEnum: userDetailsStateEnum ?? this.userDetailsStateEnum,
      userModelList: userModelList ?? this.userModelList,
      userModel: userModel ?? this.userModel,
      error: error ?? this.error,
      imageFile: imageFile ?? this.imageFile,
    );
  }
}
