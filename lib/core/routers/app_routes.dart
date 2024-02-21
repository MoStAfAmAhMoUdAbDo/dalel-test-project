import 'package:dalel/feature/auth/presentation/auth_cubit/bloc/auth_bloc.dart';
import 'package:dalel/feature/auth/presentation/views/forgot_password_view.dart';
import 'package:dalel/feature/auth/presentation/views/signin_view.dart';
import 'package:dalel/feature/auth/presentation/views/signup_view.dart';
import 'package:dalel/feature/home/presentation/views/home_page_view.dart';
import 'package:dalel/feature/home/presentation/widgets/home_nav_bar_widget.dart';
import 'package:dalel/feature/on_bording/presentation/views/on_bording_screen.dart';
import 'package:dalel/feature/splash/presentation/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRoute = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardScreen(),
    ),
    GoRoute(
      path: "/signUp",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthBloc(),
        child: const SignUpScreen(),
      ),
    ),
    GoRoute(
      path: "/signIn",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthBloc(),
        child: const SignInScreen(),
      ),
    ),
    GoRoute(
      path: "/homePage",
      builder: (context, state) => const HomePageView(),
    ),
    GoRoute(
      path: "/homeNavBar",
      builder: (context, state) => const HomeNavBar(),
    ),
    GoRoute(
      path: "/forgotPassword",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthBloc(),
        child: const ForgotPasswordView(),
      ),
    ),
  ],
);
