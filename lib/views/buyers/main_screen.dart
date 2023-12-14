import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        iconSize: 40.0,
        showSelectedLabels: true,
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        enableFeedback: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset(              'assets/icons/explore.svg',              width: 20,            ),
            icon: Icon(Icons.manage_search),

            label: 'CATEGORIES',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset(              'assets/icons/shop.svg',              width: 20,            ),
            icon: Icon(Icons.shop_outlined),

            label: 'STORE',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/icons/cart.svg'),
            icon: Icon(Icons.shopping_cart),

            label: 'CART',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/icons/search.svg'),
            icon: Icon(Icons.search),

            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/icons/account.svg'),
            icon: Icon(Icons.account_circle_rounded),

            label: 'ACCOUNT',
          ),
        ],
      ),
      body: const Center(
        child: Text('Main Screen'),
      ),
    );
  }
}
