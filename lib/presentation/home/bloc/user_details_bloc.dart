import 'dart:developer';
import 'dart:io';

import 'package:admin_pannel/core/service_locator/service_locator.dart';
import 'package:admin_pannel/data/model/user/user_model.dart';
import 'package:admin_pannel/domain/repository/iuser_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final IUserRepository _userRepository = getIt.get<IUserRepository>();

  UserDetailsBloc() : super(const UserDetailsState()) {
    on<AddUserEvent>((event, emit) async {
      try {
        log('AddUserEvent received'); // Debug statement
        emit(state.copyWith(error: null));

        var imageUrl = await _userRepository.uploadImage(state.imageFile!);
        event.userModel = event.userModel.copyWith(picture: imageUrl);

        await _userRepository.saveUser(event.userModel);
        emit(
            state.copyWith(userDetailsStateEnum: UserDetailsStateEnum.success));
      } on FirebaseException catch (e) {
        log('FirebaseException: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      } catch (e) {
        log('Exception: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      }
    });

    on<UpdateUserEvent>((event, emit) async {
      try {
        log("UpdateUserEvent received"); // Debug statement
        emit(
            state.copyWith(userDetailsStateEnum: UserDetailsStateEnum.loading));

        await _userRepository.updateUser(event.userModel);

        emit(
            state.copyWith(userDetailsStateEnum: UserDetailsStateEnum.success));
        log("User updated successfully"); // Debug statement
      } on FirebaseException catch (e) {
        log('FirebaseException: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      } catch (e) {
        log('Exception: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      }
    });

    on<GetUserEvent>((event, emit) async {
      try {
        emit(
            state.copyWith(userDetailsStateEnum: UserDetailsStateEnum.loading));
        // await Future.delayed(const Duration(seconds: 3));

        await emit.forEach(_userRepository.getRealTimeStreamData(),
            onData: (data) {
          return state.copyWith(
              userDetailsStateEnum: UserDetailsStateEnum.success,
              userModelList: data);
        }, onError: (e, _) {
          log('GetUserEvent Error: ${e.toString()}'); // Debug statement
          return state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
          );
        });
      } catch (e) {
        log('GetUserEvent Exception: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      }
    });

    on<GetUserByIdEvent>((event, emit) async {
      try {
        log('GetUserByIdEvent received'); // Debug statement
        emit(
            state.copyWith(userDetailsStateEnum: UserDetailsStateEnum.loading));
        var res = await _userRepository.getUserById(event.email);
        emit(state.copyWith(
          userDetailsStateEnum: UserDetailsStateEnum.success,
          userModel: res,
        ));
      } catch (e) {
        log('GetUserByIdEvent Exception: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
          userDetailsStateEnum: UserDetailsStateEnum.failure,
          error: e.toString(),
        ));
      }
    });

    on<DeleteUser>((event, emit) async {
      try {
        await _userRepository.deleteUserbyEmail(event.email);
        emit(
            state.copyWith(userDetailsStateEnum: UserDetailsStateEnum.success));
      } catch (e) {
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      }
    });

    on<PickImage>((event, emit) async {
      try {
        log('PickImage event received'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.imagePicking));
        var res = await _userRepository.getFileFromPicker();
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.imagePicked,
            imageFile: res));
      } catch (e) {
        log('PickImage Exception: ${e.toString()}'); // Debug statement
        emit(state.copyWith(
            userDetailsStateEnum: UserDetailsStateEnum.failure,
            error: e.toString()));
      }
    });
  }
}
