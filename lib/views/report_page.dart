import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});
  static const String id = 'ReportPage';

  @override
  Widget build(BuildContext context) {
    final TextEditingController reportController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Report a Problem'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Have a bug to report or a feature request?',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: reportController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Describe your issue or suggestion...',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                final String message = reportController.text.trim();
                if (message.isEmpty) return;

                final Uri emailUri = Uri(
                  scheme: 'mailto',
                  path: 'o.haroon111@gmail.com',
                  query: Uri.encodeFull(
                    'subject=Smart Notes Report&body=$message',
                  ),
                );

                try {
                  if (await canLaunchUrl(emailUri)) {
                    await launchUrl(emailUri);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Could not open email app.')),
                    );
                  }
                } catch (e) {
                  debugPrint('Launch error: $e');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Something went wrong. Try again.')),
                  );
                }
              },
              icon: const Icon(Icons.send),
              label: const Text('Send'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
