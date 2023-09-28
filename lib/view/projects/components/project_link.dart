import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (projectList[index].link != '') {
              launchUrl(Uri.parse(projectList[index].link));
            }
          },
          child: Row(
            children: [
              const Text('Check on Github',
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis),
              projectList[index].link != ''
                  ? IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse(projectList[index].link));
                      },
                      icon: SvgPicture.asset('assets/icons/github.svg'))
                  : const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    )
            ],
          ),
        ),
        const Spacer(),
        const Text(
          'View >',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 10),
        )
      ],
    );
  }
}
