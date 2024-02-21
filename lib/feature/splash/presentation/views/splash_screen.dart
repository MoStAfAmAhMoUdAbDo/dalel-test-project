import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/services/locator_service.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool isOnbordingVisited =
        getIt<CacheHelper>().getData(key: "isOnbordingVisited") ?? false;
    if (isOnbordingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigation(context, "/signIn")
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigation(context, "/homeNavBar")
              : delayedNavigation(context, "/signIn");
    } else {
      delayedNavigation(context, "/onBoarding");
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyle.pacifico400Style64,
        ),
      ),
    );
  }
}

void delayedNavigation(context, String path) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      customReplacementNavigate(context, path);
    },
  );
}
