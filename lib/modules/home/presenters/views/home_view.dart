import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        leading: Modular.to.canPop()
            ? GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColors.white,
                  size: 20,
                ),
              )
            : null,
        backgroundColor: AppColors.black,
        title: const Text(
          "Elden Ring Wiki",
          style: TextStyle(
            color: AppColors.orange,
          ),
        ),
      ),
      body: const Text("teste"),
    );
  }
}
