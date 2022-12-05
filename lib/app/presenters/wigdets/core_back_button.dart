import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CoreBackButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Modular.to.canPop()
        ? GestureDetector(
            onTap: onTap ?? () => Modular.to.pop(),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.white,
              size: 20,
            ),
          )
        : Container();
  }
}
