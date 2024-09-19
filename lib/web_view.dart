// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class WebViewScreen extends StatelessWidget {
//   final Uri? url;
//   const WebViewScreen({super.key, this.url});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//          appBar: AppBar(
//            scrolledUnderElevation: 0,
//          ),
//       body: launchUrl(url!),
//     );
//   }
//   Future<void> _launchUrl() async {
//     if (!await launchUrl(url!)) {
//       throw Exception('Could not launch $url');
//     }
// }
//
//
// /*
// * import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// final Uri _url = Uri.parse('https://flutter.dev');
//
// void main() => runApp(
//   const MaterialApp(
//     home: Material(
//       child: Center(
//         child: ElevatedButton(
//           onPressed: _launchUrl,
//           child: Text('Show Flutter homepage'),
//         ),
//       ),
//     ),
//   ),
// );
//
//
// }*/