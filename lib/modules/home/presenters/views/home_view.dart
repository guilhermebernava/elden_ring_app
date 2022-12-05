import 'package:elden_ring_app/app/presenters/wigdets/core_app_bar.dart';
import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:elden_ring_app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CoreAppBar(),
      backgroundColor: AppColors.black,
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (context, index) => Text(
          index.toString(),
          style: AppTextStyles.appBarTitle,
        ),
      ),
    );
  }
}
