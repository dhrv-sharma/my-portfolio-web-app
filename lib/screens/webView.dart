import 'package:url_launcher/url_launcher.dart';

class webView {
  static Future<void> openExternalApplication(String url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
