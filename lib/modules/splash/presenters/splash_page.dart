import 'package:elden_ring_app/modules/home/home_module.dart';
import 'package:elden_ring_app/modules/splash/presenters/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  bool _initAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 200),
      () => setState(() {
        _initAnimation = true;
      }),
    );

    Future.delayed(const Duration(milliseconds: 2800), () {
      Modular.to.navigate(HomeModule.moduleRoute);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 1200),
        opacity: _initAnimation ? 1 : 0,
        child: LogoWidget(
          size: size,
        ),
      ),
    );
  }
}
