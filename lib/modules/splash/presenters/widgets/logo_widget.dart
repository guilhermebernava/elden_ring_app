import 'package:elden_ring_app/themes/app_images.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final Size size;
  const LogoWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size.height * 0.3,
        child: Image.asset(
          AppImages.logo,
        ),
      ),
    );
  }
}
