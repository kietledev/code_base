import 'package:code_base/common/constants/constants.dart';
import 'package:code_base/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

import '../injection.dart';

class PageModule extends DIModule {
  @override
  Future<void> provides() async {
    injector.registerFactory<Widget>(() => const LaunchPage(),
        instanceName: RouteConstants.launch);

        injector.registerFactory<Widget>(() => const SplashPage(),
        instanceName: RouteConstants.splash);

    injector.registerFactory<Widget>(() => const LoginPage(),
        instanceName: RouteConstants.login);

        injector.registerFactory<Widget>(() => const BottomBarPage(),
        instanceName: RouteConstants.bottomBar);

    injector.registerFactory<Widget>(() => const HomePage(),
        instanceName: RouteConstants.home);
  }
}
