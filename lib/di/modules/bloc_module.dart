import 'package:code_base/presentation/blocs/blocs.dart';

import '../injection.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    /* Login */
    injector.registerFactory<LoginBloc>(() => LoginBloc(injector()));
  }
}
