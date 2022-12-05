import 'package:elden_ring_app/modules/home/home_module.dart';
import 'package:elden_ring_app/modules/splash/presenters/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const SplashPage(),
        ),
        ModuleRoute(
          HomeModule.moduleRoute,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        )
      ];
}
