import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static const String id = 'AboutPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the Developer'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SmartNotes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Version 1.0.0',
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              Divider(height: 30),
              Text('Developed by:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text('Osama Farrag', style: TextStyle(fontSize: 16)),
              Text('Email: o.haroon111@gmail.com'),
              Text('Phone: +20 1154060470'),
              SizedBox(height: 20),
              Text(
                'This app is designed to help users quickly take notes with a clean, fast, and simple interface. Thank you for your support!',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
