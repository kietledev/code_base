import 'package:dio/dio.dart';
import 'package:code_base/data/datasources/remote/remote.dart';

import '../injection.dart';

class ApiModule extends DIModule {
  @override
  Future<void> provides() async {
    /* Dio client */
    injector.registerSingleton<Dio>(Dio());

    /* Dependencies */
    injector.registerSingleton<LoginApiService>(LoginApiService(injector()));
  }
}
