import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/check_state_changes.dart';
import 'package:dalel/core/routers/app_routes.dart';
import 'package:dalel/core/services/locator_service.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  checkStateChanges();
  setUpLocatorService();
  await getIt<CacheHelper>().init();

  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: goRoute,
    );
  }
}
