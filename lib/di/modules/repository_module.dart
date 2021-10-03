import 'package:code_base/data/repositories/repositories.dart';
import 'package:code_base/domain/repositories/repositories.dart';

import '../injection.dart';

class RepositoryModule extends DIModule {
  @override
  Future<void> provides() async {
    injector.registerSingleton<UserRepository>(
      UserRepositoryImpl(injector()),
    );
  }
}
