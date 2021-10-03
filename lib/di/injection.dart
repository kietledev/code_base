import 'package:code_base/di/modules/page_module.dart';
import 'package:get_it/get_it.dart';

import 'modules/module.dart';

final GetIt injector = GetIt.instance;

abstract class DIModule {
  void provides();
}

class Injection {
  static Future<void> inject() async {
    // await DatabaseModule().provides();
    await ApiModule().provides();
    await RepositoryModule().provides();
    await UseCaseModule().provides();
    await BlocModule().provides();
    await PageModule().provides();
  }
}
