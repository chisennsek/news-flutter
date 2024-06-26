import 'package:flutter/material.dart';

import '../widget/text_widget.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

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
            InfoRow(label: 'Owner', value: 'Rawaye News'),
            Divider(),
            InfoRow(label: 'Editor', value: 'The Code Artist'),
            Divider(),
            InfoRow(label: 'Email', value: 'thecodeartist.dev@gmail.com'),
            Divider(),
            InfoRow(label: 'Website', value: 'www.thecodeartist.dev'),
            Divider(),
            InfoRow(label: 'Contact us', value: '6352358298'),
            Divider(),
            InfoRow(
                label: 'Support Email', value: 'thecodeartist.dev@gmail.com'),
            Divider(),
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
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          TextWidget(value),
        ],
      ),
    );
  }
}
