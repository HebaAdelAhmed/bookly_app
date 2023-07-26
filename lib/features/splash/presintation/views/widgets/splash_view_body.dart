import 'package:bookly_app/core/utils/constants/app_constant.dart';
import 'package:bookly_app/core/utils/constants/assets.dart';
import 'package:bookly_app/features/home/presintation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {


  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo ,
          width: width / 1.5,
        ),
        SizedBox(
          height: height / 35,
        ),
        AnimatedBuilder(
          builder: (context, child) => SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
          animation: slidingAnimation,
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this , duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 12), end: Offset.zero,).animate(animationController);
    animationController.forward();
  }

  navigateToHomeView (){
    Future.delayed(const Duration(seconds: 4) , () {
      Get.to(() =>
      const HomeView() ,
        transition: Transition.fade ,
        duration: AppConstants.kTransitionDuration,
      );
    },);
  }
}
