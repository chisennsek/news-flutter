import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/src/screen/about_us_screen.dart';
import 'package:news/src/screen/help_support_screen.dart';
import 'package:news/src/screen/privacy_screen.dart';

import '../widget/text_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext conTextWidget) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const TextWidget(
          'Setting',
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: CachedNetworkImageProvider(
                      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextWidget(
                    'Alexi Romano',
                  ),
                  TextWidget(
                    'alexiromano@gmail.com',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextWidget(
                            '100',
                          ),
                          TextWidget('Favorites'),
                        ],
                      ),
                      Column(
                        children: [
                          TextWidget(
                            '300',
                          ),
                          TextWidget('Likes'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Wrap(
                    spacing: 10,
                    children: [
                      Chip(label: TextWidget('Covid 19')),
                      Chip(label: TextWidget('Entertainment')),
                      Chip(label: TextWidget('Science')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SwitchListTile(
                    title: const TextWidget('Notification'),
                    value: true,
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    title: const TextWidget('Dark Mode'),
                    value: false,
                    onChanged: (val) {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const TextWidget('Preferences'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const TextWidget('About'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsScreen(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.lock),
                    title: const TextWidget('Privacy & security'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrivacyScreen(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const TextWidget('Help & support'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HelpSupportScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
