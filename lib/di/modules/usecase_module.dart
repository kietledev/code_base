import 'package:code_base/domain/usecases/usecases.dart';

import '../injection.dart';

class UseCaseModule extends DIModule {
  @override
  Future<void> provides() async {
    /* Login Usecase */
    injector.registerSingleton<PostLoginUseCase>(PostLoginUseCase(injector()));
  }
}
