import 'package:flutter/material.dart';
import 'package:news/src/screen/home_screen.dart';
import 'package:news/src/screen/setting_screen.dart';
import 'package:news/src/screen/my_feed_screen.dart';

import '../common/app_color.dart';
import '../widget/text_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectIndex = 0;

  Color _colorLabel(int index) =>
      _selectIndex == index ? AppColor.colorPrimary : Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        backgroundColor: Colors.white,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: (int index) {
          _selectIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                Icon(Icons.home, color: _colorLabel(0)),
                const SizedBox(height: 4),
                TextWidget('Home', color: _colorLabel(0)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                Icon(Icons.feed_outlined, color: _colorLabel(1)),
                const SizedBox(height: 4),
                TextWidget('My Feed', color: _colorLabel(1)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                Icon(Icons.settings, color: _colorLabel(2)),
                const SizedBox(height: 4),
                TextWidget('Setting', color: _colorLabel(2)),
              ],
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectIndex,
        children: const [
          HomeScreen(),
          MyFeedScreen(),
          SettingScreen(),
        ],
      ),
    );
  }
}
