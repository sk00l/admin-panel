import 'package:admin_pannel/core/configs/initializer/init_bloc.dart';
import 'package:admin_pannel/core/configs/initializer/init_reposiotry.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  InitRepository.init();
  InitBloc.init();
}
