import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://www.linkedin.com/in/prashan-gc-074ab618b/'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/prashangc')),
        ),
        InkWell(
          onTap: () =>
              launchUrl(Uri.parse('https://www.instagram.com/prashan.gc/')),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0 * 0.4),
            child: Image.asset(
              'assets/icons/insta.png',
              // ignore: deprecated_member_use
              color: Colors.white,
              height: 15,
              width: 15,
            ),
          ),
        ),
        InkWell(
          onTap: () =>
              launchUrl(Uri.parse('https://www.facebook.com/prashan.gc.5')),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0 * 0.4),
            child: Image.asset(
              'assets/icons/fb.png',
              // ignore: deprecated_member_use
              color: Colors.white,
              height: 15,
              width: 15,
            ),
          ),
        ),
      ],
    );
  }
}
