import 'package:app/gen/assets.gen.dart';
import 'package:app/gen/colors.gen.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:app/presentation/widgets/ui_app_bar.dart';
import 'package:app/presentation/widgets/ui_bottom_bar.dart';
import 'package:app/presentation/widgets/ui_circular_menu.dart';
import 'package:app/presentation/widgets/ui_fab_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController(initialPage: 0);
  final _drawerKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  final List<Widget> bottomBarPages = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  Widget _buildLeftActionIcon(int currentIndex) {
    if (currentIndex == 0 || currentIndex == 1) {
      return GestureDetector(
        onTap: () {},
        child: SvgPicture.asset(
          Assets.icons.iconMessage.path,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {},
        child: SvgPicture.asset(
          Assets.icons.iconSearch.path,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  String getAppBarTitle(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return LocaleKeys.main_home.tr();
      case 1:
        return LocaleKeys.main_atlas.tr();
      case 3:
        return LocaleKeys.main_music.tr();
      case 4:
        return LocaleKeys.main_events.tr();
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _drawerKey,
      drawerScrimColor: Colors.transparent,
      appBar: UIAppbar(
        title: getAppBarTitle(_selectedIndex),
        leading: GestureDetector(
          onTap: () {
            _drawerKey.currentState?.openDrawer();
          },
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(),
                imageUrl:
                    'https://i.pinimg.com/236x/92/4d/55/924d5562740bee9f934f91cff5ea6eca.jpg',
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: ScreenUtil().setWidth(36),
            height: ScreenUtil().setWidth(36),
            decoration: const BoxDecoration(
              color: ColorName.inputFillColor,
              shape: BoxShape.circle,
            ),
            child: _buildLeftActionIcon(_selectedIndex),
          ),
          UIFabMenu(
            onSearchTap: () {},
            onNotificationTap: () {},
            onCartTap: () {},
          )
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length,
          (index) => bottomBarPages[index],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const UICircularMenu(),
      bottomNavigationBar: UIBottombar(
        onTap: (index) {
          _selectedIndex = index;
          _pageController.jumpToPage(index);
          setState(() {});
        },
      ),
    );
  }
}
