import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/feature/cart/presentation/views/cart_view.dart';
import 'package:dalel/feature/home/presentation/views/home_page_view.dart';
import 'package:dalel/feature/profile/presentaion/views/profile_view.dart';
import 'package:dalel/feature/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController controller = PersistentTabController();

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomePageView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesHomeIconActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesHomeIcon)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesShoppingCart),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesShoppingCart)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesSearchActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesSearch)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesPersonActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesPerson)),
  ];
}
