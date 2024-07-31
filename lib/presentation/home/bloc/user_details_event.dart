// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_details_bloc.dart';

abstract class UserDetailsEvent {}

class AddUserEvent extends UserDetailsEvent {
  UserModel userModel;
  AddUserEvent({
    required this.userModel,
  });
}

class UpdateUserEvent extends UserDetailsEvent {
  UserModel userModel;
  UpdateUserEvent({
    required this.userModel,
  });
}

class GetUserEvent extends UserDetailsEvent {}

class GetUserByIdEvent extends UserDetailsEvent {
  final String email;
  GetUserByIdEvent(this.email);
}

class PickImage extends UserDetailsEvent {}

class DeleteUser extends UserDetailsEvent {
  final String email;
  DeleteUser(
    this.email,
  );
}
