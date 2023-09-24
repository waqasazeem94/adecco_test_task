import 'package:adecco_task/app/services/api_services/api_service_impl.dart';
import 'package:adecco_task/app/services/api_services/api_services.dart';
import 'package:adecco_task/features/login/data/repositories/i_login_repository.dart';
import 'package:adecco_task/features/login/data/repositories/login_repository.dart';
import 'package:get_it/get_it.dart';

// GetIt get i => GetIt.instance;

final GetIt locator = GetIt.instance;

Future<void> initInjector() async {
  // i.registerSingleton(LoginRepository());
  locator.registerSingleton<ApiService>(ApiServiceImpl());
  locator.registerSingleton<ILoginRepository>(LoginRepository());


}
