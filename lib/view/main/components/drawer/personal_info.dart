import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import '../../../../view model/drawer_controller.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final personalInfo = PersonalInfoController.getPersonalInfo();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        AreaInfoText(title: 'Contact', text: personalInfo.contact),
        AreaInfoText(title: 'Email', text: personalInfo.email),
        AreaInfoText(title: 'LinkedIn', text: personalInfo.linkedIn),
        AreaInfoText(title: 'Github', text: personalInfo.github),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills', style: TextStyle(color: Colors.white)),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
