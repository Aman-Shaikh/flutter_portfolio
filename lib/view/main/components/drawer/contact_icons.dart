import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import '../../../../view model/drawer_controller.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({Key? key});

  @override
  Widget build(BuildContext context) {
    final contactController = ContactIconController();

    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: contactController.launchLinkedInProfile,
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: contactController.launchGitHubProfile,
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

