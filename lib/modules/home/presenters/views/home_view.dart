import 'package:elden_ring_app/app/presenters/wigdets/core_app_bar.dart';
import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CoreAppBar(),
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 900,
                color: AppColors.orange,
                width: double.infinity,
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
