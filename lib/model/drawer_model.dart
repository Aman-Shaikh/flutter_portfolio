// models.dart

class PersonalInfoModel {
  final String contact;
  final String email;
  final String linkedIn;
  final String github;

  PersonalInfoModel({
    required this.contact,
    required this.email,
    required this.linkedIn,
    required this.github,
  });
}

class SkillModel {
  final String title;
  final double percentage;
  final String image;

  SkillModel({
    required this.title,
    required this.percentage,
    required this.image,
  });
}

class KnowledgeModel {
  final List<String> knowledgeList;

  KnowledgeModel({required this.knowledgeList});
}

class AboutModel {
  final String name;
  final String role;

  AboutModel({
    required this.name,
    required this.role,
  });
}


class DrawerImageModel {
  final String imagePath;

  DrawerImageModel({
    required this.imagePath,
  });
}


