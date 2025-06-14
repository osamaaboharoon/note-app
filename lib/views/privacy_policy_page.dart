import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});
  static const String id = 'PrivacyPolicyPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
Privacy Policy for SmartNotes

Last updated: 14 June 2025

SmartNotes is developed by Osama Farrag. Your privacy is important to us. This document explains what data we collect, why we collect it, and how we handle it.

1. Data Collection:
This app stores your notes locally on your device. We do not collect or store any personal data on remote servers.

2. Permissions:
This app may request storage access to save notes and app settings locally.

3. Data Usage:
All information remains on your device unless you manually share it. We do not sell or share your data with any third party.

4. Security:
We take reasonable steps to protect your data. However, since it's stored locally, it's your responsibility to ensure device security.

5. Contact:
For any inquiries or data concerns, please contact:
Email: o.haroon111@gmail.com
Phone: +20 1154060470

By using this app, you agree to this privacy policy.
            ''',
            style: TextStyle(fontSize: 16, height: 1.6),
          ),
        ),
      ),
    );
  }
}
