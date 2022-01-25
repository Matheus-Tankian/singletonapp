import 'package:get_it/get_it.dart';
import 'package:singletonapp/modelclass.dart';

final GetIt getIt = GetIt.instance;

void setup(){
  getIt.registerLazySingleton(() => Modelclass());
}