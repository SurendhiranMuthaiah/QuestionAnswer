import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:question_answer/answer_list.dart';
import 'package:question_answer/app_data.dart';

class QuestionList extends StatefulWidget {
  const QuestionList({super.key});

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Flutter Questions',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: appDataList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnswerList(),
                  settings: RouteSettings(
                    arguments: index,
                  ),
                ));
              },
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  appDataList[index].question,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
