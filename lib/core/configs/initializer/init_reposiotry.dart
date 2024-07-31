import 'package:admin_pannel/data/repository/user_auth_repository.dart';
import 'package:admin_pannel/data/repository/user_repository.dart';
import 'package:admin_pannel/domain/repository/iuser_auth_repository.dart';
import 'package:admin_pannel/domain/repository/iuser_repository.dart';
import 'package:get_it/get_it.dart';

abstract class InitRepository {
  static void init() {
    GetIt.I.registerSingleton<IUserRepository>(UserRepository());
    GetIt.I.registerSingleton<IUserAuthRepository>(UserRegisterRepository());
  }
}
