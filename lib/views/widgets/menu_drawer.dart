import 'package:flutter/material.dart';
import 'package:note_app/views/about_page.dart';
import 'package:note_app/views/privacy_policy_page.dart';
import 'package:note_app/views/report_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'privacy') {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const PrivacyPolicyPage()));
        } else if (value == 'about') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const AboutPage()));
        } else if (value == 'report') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const ReportPage()));
        }
      },
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'privacy', child: Text('Privacy Policy')),
        const PopupMenuItem(value: 'about', child: Text('About the Developer')),
        const PopupMenuItem(value: 'report', child: Text('Send Report')),
      ],
    );
  }
}
