import 'package:flutter/material.dart';

import '../widget/text_widget.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget('Privacy & Security', color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              'App Description',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            SizedBox(height: 4),
            TextWidget(
              "Lorem Ipsum is simply dummy text of the printing and "
              "typesetting industry. Lorem Ipsum has been the industry's"
              " standard dummy text ever since the 1500s, when an unknown "
              "printer took a galley of type and scrambled it to make a type"
              " specimen book. It has survived not only five centuries, but "
              "also the leap into electronic typesetting, remaining "
              "essentially unchanged. It was popularised in the 1960s "
              "with the release of Letraset sheets containing Lorem Ipsum "
              "passages, and more recently with desktop publishing software"
              "like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
            SizedBox(height: 8),
            TextWidget(
              'Web Description',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            SizedBox(height: 4),
            TextWidget(
              "Lorem Ipsum is simply dummy text of the printing and "
              "typesetting industry. Lorem Ipsum has been the industry's"
              " standard dummy text ever since the 1500s, when an unknown "
              "printer took a galley of type and scrambled it to make a type"
              " specimen book. It has survived not only five centuries, but "
              "also the leap into electronic typesetting, remaining "
              "essentially unchanged. It was popularised in the 1960s "
              "with the release of Letraset sheets containing Lorem Ipsum "
              "passages, and more recently with desktop publishing software"
              "like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ],
        ),
      ),
    );
  }
}
