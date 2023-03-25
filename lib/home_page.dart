import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questions = [
    {
      "question": "Your prefered color?",
      "responses": ["rep1", "rep2", "rep3", "rep4"]
    },
    {
      "question": "Best Car ?",
      "responses": ["rep1", "rep2", "rep3"]
    },
    {
      "question": "Favorite pet?",
      "responses": ["rep1", "rep2", "rep3"]
    }
  ];

  var questionIndex = 0;

  void answer() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cloud),
          )
        ],
      ),
      // condition ? res1 : res2
      body: questions.length <= questionIndex
          ? Text("Your score is ???")
          : Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  // Text('My Question ?'),
                  // question
                  Question(questions[questionIndex]['question'].toString()),
                  SizedBox(height: 20),
                  // answer
                  Answer(answer),
                  SizedBox(height: 20),
                  Answer(answer),
                  SizedBox(height: 20),
                  Answer(answer),
                ],
              ),
            ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_comment),
      ),
    );
  }
}