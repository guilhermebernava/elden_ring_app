import 'dart:ui';
import 'package:elden_ring_app/app/presenters/wigdets/core_back_button.dart';
import 'package:elden_ring_app/app/presenters/wigdets/core_drawer_button.dart';
import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:elden_ring_app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class CoreAppBar extends AppBar {
  final VoidCallback? backButton;

  CoreAppBar({
    super.key,
    this.backButton,
  }) : super(
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          elevation: 0,
          toolbarHeight: 40,
          leading: CoreBackButton(
            onTap: backButton,
          ),
          actions: [
            const CoreDrawerButton(),
          ],
          backgroundColor: AppColors.blurWhite,
          title: Text(
            "elden ring wiki",
            textAlign: TextAlign.center,
            style: AppTextStyles.appBarTitle,
          ),
        );
}
