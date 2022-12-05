import 'package:elden_ring_app/modules/home/presenters/views/home_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  static const moduleRoute = "/home/";
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => const HomeView(),
        )
      ];
}
