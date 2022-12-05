import 'dart:ui';
import 'package:elden_ring_app/app/presenters/wigdets/core_back_button.dart';
import 'package:elden_ring_app/themes/app_colors.dart';
import 'package:elden_ring_app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class CoreBody extends StatefulWidget {
  final Widget child;

  const CoreBody({
    super.key,
    required this.child,
  });

  @override
  State<CoreBody> createState() => _CoreBodyState();
}

class _CoreBodyState extends State<CoreBody> with TickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
    _animation = Tween(begin: 0.0, end: 30.0).animate(
      _animationController,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => AppBar(
            flexibleSpace: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            elevation: 0,
            toolbarHeight: _animation.value,
            leading: const CoreBackButton(),
            backgroundColor: AppColors.blurWhite,
            title: Text(
              "elden ring wiki",
              textAlign: TextAlign.center,
              style: AppTextStyles.appBarTitle,
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.black,
      body: NotificationListener(
        child: widget.child,
        onNotification: (notification) {
          if (notification is ScrollEndNotification) {
            if (_scrollController.position.pixels > 20) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
          }
          return false;
        },
      ),
    );
  }
}
