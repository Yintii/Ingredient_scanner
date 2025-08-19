import 'package:flutter/material.dart';

class QuestionItem{
  final int question_number;
  final String question_text;
  final List<String> answer_choices;

  const QuestionItem(this.question_number, this.question_text, this.answer_choices);
}

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  final List<QuestionItem> questions = [
    QuestionItem(1, "Are you cool?", ["yes", "no"]),
    QuestionItem(2, "Are you sure?", ["no", "no"]),
    QuestionItem(3, "Lol?", ["yes", "yes"]),
    QuestionItem(4, "Based.", ["ya dog"]),
  ];

  final List<String> answers = [];

  

  @override
  State<QuizScreen> createState() => _QuizScreenState();

}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  String? selectedAnswer;
  bool quizStarted = false;

  void nextQuestion(){
    if(selectedAnswer != null){
      widget.answers.add(selectedAnswer!);
    }

    if(currentIndex < widget.questions.length - 1){
      setState((){
        currentIndex++;
        selectedAnswer = null;
      });
    } else {
      //quiz finished
      debugPrint("Quiz finished! Answers: ${widget.answers}");
      setState((){});
    }
  }

  @override
  Widget build(BuildContext context){
    //Quiz Not Started
    if(quizStarted == false){
      return Scaffold(
            body: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Welcome to the Quiz"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                    setState(() {
                      quizStarted = true;
                    });
                  }, 
                  child: Text('Next')
                  ),
                ],
              ),
            ),
          );
    }
    //Quiz Done?
    if(currentIndex >= widget.questions.length){
      return Scaffold(
        body: Center(
          child: Text("Quiz Finished!\nYour answers: ${widget.answers}"),
        ),
      );
    }

    final question = widget.questions[currentIndex];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Q${question.question_number}: ${question.question_text}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...question.answer_choices.map((choice) {
              return RadioListTile<String>(
                title: Text(choice),
                value: choice,
                groupValue: selectedAnswer,
                onChanged: (value){
                  setState((){
                    selectedAnswer = value;
                  });
                },
              );
            }).toList(),
            ElevatedButton(
              onPressed: selectedAnswer == null ? null : nextQuestion,
              child: Text(
                currentIndex == widget.questions.length - 1 ? 'Finish' : 'Next'
              ),
            ),
          ]
        )
      ),
    );
    
  }
}