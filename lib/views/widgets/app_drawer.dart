import 'package:flutter/material.dart';
import 'package:note_app/views/about_page.dart';
import 'package:note_app/views/privacy_policy_page.dart';
import 'package:note_app/views/report_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade700, Colors.blue.shade300],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 30, color: Colors.blue),
                ),
                SizedBox(height: 12),
                Text(
                  'Smart Notes',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'by Osama Farrag',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PrivacyPolicyPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About Developer'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AboutPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bug_report),
            title: const Text('Report a Problem'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ReportPage()));
            },
          ),
        ],
      ),
    );
  }
}
