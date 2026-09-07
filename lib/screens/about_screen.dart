import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/colors.dart';

/// About screen: app info, photo credits, and developer links.
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final Uri _linkedInUrl = Uri.parse(
    'https://www.linkedin.com/in/robert-allan-bolista/',
  );
  final Uri _websiteUrl = Uri.parse('https://www.rabolista.com');
  final Uri _commonsUrl = Uri.parse(
    'https://commons.wikimedia.org/wiki/Category:London,_Ontario',
  );

  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    final info = await PackageInfo.fromPlatform();
    if (!mounted) return;
    setState(() => _version = '${info.version} (${info.buildNumber})');
  }

  Future<void> _open(Uri url) async {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final accentColor = AppColors.accent(context);

    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: const Text('About')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Column(
            children: [
              Icon(Icons.forest_rounded, size: 50, color: accentColor),
              const SizedBox(height: 12),
              const Text(
                'Discover London ON',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Your guide to London, Ontario — neighbourhoods, '
                  'attractions, restaurants, and running groups across '
                  'the Forest City.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: AppColors.muted(context)),
                ),
              ),
              if (_version.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  'Version $_version',
                  style: TextStyle(fontSize: 12, color: AppColors.muted(context)),
                ),
              ],
            ],
          ),
          const SizedBox(height: 28),
          const _SectionHeader(title: 'Built With'),
          ListTile(
            leading: Icon(Icons.flutter_dash_rounded, color: accentColor),
            title: const Text('Flutter & Dart'),
            subtitle: const Text(
              "Google's UI toolkit for natively compiled iOS and Android apps",
            ),
          ),
          const SizedBox(height: 8),
          const _SectionHeader(title: 'Photos'),
          ListTile(
            leading: Icon(Icons.photo_library_outlined, color: accentColor),
            title: const Text('Wikimedia Commons'),
            subtitle: const Text(
              'Landmark and neighbourhood photos are used under Creative '
              'Commons and public-domain licences, credited on each image.',
            ),
            onTap: () => _open(_commonsUrl),
          ),
          const SizedBox(height: 8),
          const _SectionHeader(title: 'Developer'),
          ListTile(
            leading: Icon(Icons.person, color: accentColor),
            title: const Text('Robert Allan Bolista'),
          ),
          ListTile(
            leading: Icon(Icons.link, color: accentColor),
            title: const Text('LinkedIn Profile'),
            onTap: () => _open(_linkedInUrl),
          ),
          ListTile(
            leading: Icon(Icons.travel_explore, color: accentColor),
            title: const Text('Website'),
            onTap: () => _open(_websiteUrl),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}
