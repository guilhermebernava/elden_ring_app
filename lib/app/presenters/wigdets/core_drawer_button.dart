import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CoreDrawerButton extends StatelessWidget {
  const CoreDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.menu,
          color: AppColors.white,
          size: 30,
        ),
      ),
    );
  }
}
