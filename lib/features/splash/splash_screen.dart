import 'package:auto_route/auto_route.dart';
import 'package:books_app/config/routes/app_router.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  // comment this if you use lottie
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      // comment this if you use lottie
      duration: const Duration(seconds: 3),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            if (context.mounted) {
              context.router.replaceAll([BookListRoute()]);
            }
          }
        },
      );

    // comment the following if you use lottie
    _scaleAnimation = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();
    //---------------------------------------
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0.0,
      ),
      // body: Center(
      //   child: Lottie.asset(
      //     Assets.animations.splash.path,
      //     repeat: false, // Set to false to avoid looping
      //     controller: _animationController,
      //     onLoaded: (composition) {
      //       // Configure the animation duration and forward it
      //       _animationController
      //         ..duration = composition.duration
      //         ..forward();
      //     },
      //
      //     // Callback for animation completion
      //     width: double.infinity,
      //     fit: BoxFit.contain,
      //   ),
      // ),

      // comment the following if you use lottie
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: child,
            );
          },
          child: Image.asset(
            Assets.images.logo.path,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
