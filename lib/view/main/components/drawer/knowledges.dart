import 'package:flutter/material.dart';

import '../../../../view model/drawer_controller.dart';
import 'knowledge.dart';

import 'package:flutter/material.dart';


class Knowledges extends StatelessWidget {
  const Knowledges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final knowledge = KnowledgeController.getKnowledge();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        for (var knowledgeItem in knowledge.knowledgeList)
          KnowledgeText(knowledge: knowledgeItem),
      ],
    );
  }
}
