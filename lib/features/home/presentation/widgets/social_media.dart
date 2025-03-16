import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

Widget socialMedia(BuildContext context, String urlTarget, String iconAssets) {
  return GestureDetector(
    onTap: () async {
      final Uri url = Uri.parse(urlTarget);
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(
          // ignore: use_build_context_synchronously
          context,
        ).showSnackBar(SnackBar(content: Text("Could not launch URL")));
      }
    },
    child: CircleAvatar(
      maxRadius: !Responsive.isDesktop(context) ? 25 : 35,
      backgroundColor: Colors.grey.shade300,
      child: Image.asset(
        fit: BoxFit.cover,
        iconAssets,
        height: !Responsive.isDesktop(context) ? 30 : 40,
      ),
    ),
  );
}
