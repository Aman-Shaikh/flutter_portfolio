// controllers.dart


import 'package:url_launcher/url_launcher.dart';

import '../model/drawer_model.dart';

class PersonalInfoController {
  static PersonalInfoModel getPersonalInfo() {
    return PersonalInfoModel(
      contact: '+12269758318',
      email: 'connectxaman@gmail.com',
      linkedIn: '@aman-shaikh-9451141a5',
      github: '@Aman-Shaikh',
    );
  }
}

class SkillController {
  static List<SkillModel> getSkills() {
    return [
      SkillModel(percentage: 0.7, title: 'Flutter', image: 'assets/icons/flutter.png'),
      SkillModel(percentage: 0.9, title: 'Dart', image: 'assets/icons/dart.png'),
      // Add more skills as needed
    ];
  }
}

class AboutController {
  AboutModel fetchAboutData() {
    // You can fetch data from API or any other source here
    // For now, I'll provide sample data
    return AboutModel(
      name: 'Aman Shaikh',
      role: 'Flutter Developer & The Student of Computer Science',
    );
  }
}

class DrawerImageController {
  DrawerImageModel fetchDrawerImageData() {
    // You can fetch data from API or any other source here
    // For now, I'll provide sample data
    return DrawerImageModel(
      imagePath: 'assets/images/profile.jpg',
    );
  }
}



class KnowledgeController {
  static KnowledgeModel getKnowledge() {
    return KnowledgeModel(
      knowledgeList: ['Flutter, Dart', 'Networking, Cyber Security', 'Git, Github'],
    );
  }
}

class ContactIconController {
  void launchLinkedInProfile() {
    // Replace the URL with the actual LinkedIn profile URL
    launchUrl(Uri.parse('https://www.linkedin.com/in/aman-shaikh-9451141a5'));
  }

  void launchGitHubProfile() {
    // Replace the URL with the actual GitHub profile URL
    launchUrl(Uri.parse('https://github.com/Aman-Shaikh'));
  }
}


