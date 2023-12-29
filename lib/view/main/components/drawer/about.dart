import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import '../../../../view model/drawer_controller.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({Key? key});

  @override
  Widget build(BuildContext context) {
    final aboutData = AboutController().fetchAboutData();

    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(flex: 2,),
            const DrawerImage(),
            const Spacer(),
            Text(
              aboutData.name,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: defaultPadding / 4,),
            Text(
              aboutData.role,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
