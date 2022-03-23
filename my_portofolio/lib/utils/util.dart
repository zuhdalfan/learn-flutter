import 'package:mailto/mailto.dart';
// For Flutter applications, you'll most likely want to use
// the url_launcher package.
import 'package:url_launcher/url_launcher.dart';

// ...somewhere in your Flutter app...
launchMailto() async {
  final mailtoLink = Mailto(
    to: ['to@example.com'],
    cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'mailto example subject',
    body: 'mailto example body',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}