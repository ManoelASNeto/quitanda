import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/pages/cart/cart_tab.dart';
import 'package:quitanda/src/pages/home/home_tab.dart';
import 'package:quitanda/src/pages/orders/orders_tab.dart';
import 'package:quitanda/src/pages/profile/profile_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: const [
            HomeTab(),
            CarTab(),
            OrdersTab(),
            ProfileTab(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: 50,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        backgroundColor: CustomColors.customSwatchColor,
        selectedIndex: _currentIndex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.white.withAlpha(100),
              icon: const Icon(
                MdiIcons.homeOutline,
                size: 20,
              ),
              title: Text(
                'Inicio',
                style: GoogleFonts.elMessiri(
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
            activeColor: Colors.white,
            inactiveColor: Colors.white.withAlpha(100),
            icon: const Icon(
              MdiIcons.cartOutline,
              size: 20,
            ),
            title: Text(
              'Carrinho',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            activeColor: Colors.white,
            inactiveColor: Colors.white.withAlpha(100),
            icon: const Icon(
              MdiIcons.clipboardListOutline,
              size: 20,
            ),
            title: Text(
              'Pedidos',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            activeColor: Colors.white,
            inactiveColor: Colors.white.withAlpha(100),
            icon: const Icon(
              MdiIcons.accountCircleOutline,
              size: 20,
            ),
            title: Text(
              'Perfil',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
        onItemSelected: (index) => setState(
          () {
            _currentIndex = index;
            _pageController.jumpToPage(
              index,
            );
          },
        ),
      ),
    );
  }
}
