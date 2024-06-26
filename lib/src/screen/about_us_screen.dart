import 'package:flutter/material.dart';

import '../widget/text_widget.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget('Help & Support', color: Colors.white),
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
            InfoRow(label: 'Author', value: 'Rawaye News'),
            Divider(),
            InfoRow(label: 'Email', value: 'thecodeartist.dev@gmail.com'),
            Divider(),
            InfoRow(label: 'Website', value: 'www.thecodeartist.dev'),
            Divider(),
            InfoRow(label: 'Contact us', value: '6352358298'),
            Divider(),
            SizedBox(height: 8),
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
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(label, fontSize: 16),
          TextWidget(value, fontSize: 16),
        ],
      ),
    );
  }
}
