import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> quizQuestions = [
    {
      "Question": "Who is the Prime Minister of India?",
      "Options": [
        "Amit Shah",
        "Rajendra Raut",
        "Narendra Modi",
        "Puneet Superstar"
      ],
      "CorrectOption": 2
    },
    {
      "Question": "What is the capital of France?",
      "Options": ["Berlin", "Madrid", "Paris", "Lisbon"],
      "CorrectOption": 2
    },
    {
      "Question": "What is the largest planet in our Solar System?",
      "Options": ["Earth", "Mars", "Jupiter", "Venus"],
      "CorrectOption": 2
    },
    {
      "Question": "Which element has the chemical symbol 'O'?",
      "Options": ["Oxygen", "Gold", "Osmium", "Silver"],
      "CorrectOption": 0
    },
    {
      "Question": "In what year did World War II end?",
      "Options": ["1945", "1939", "1941", "1950"],
      "CorrectOption": 0
    },
    {
      "Question": "Who wrote 'Romeo and Juliet'?",
      "Options": [
        "Charles Dickens",
        "William Shakespeare",
        "Mark Twain",
        "Jane Austen"
      ],
      "CorrectOption": 1
    },
    {
      "Question": "What is the smallest prime number?",
      "Options": ["1", "2", "3", "5"],
      "CorrectOption": 1
    },
    {
      "Question": "Which is the longest river in the world?",
      "Options": ["Amazon", "Nile", "Yangtze", "Mississippi"],
      "CorrectOption": 1
    },
    {
      "Question": "What is the chemical formula of water?",
      "Options": ["H2O", "O2", "CO2", "N2"],
      "CorrectOption": 0
    },
    {
      "Question": "Who painted the 'Mona Lisa'?",
      "Options": [
        "Vincent van Gogh",
        "Pablo Picasso",
        "Leonardo da Vinci",
        "Claude Monet"
      ],
      "CorrectOption": 2
    }
  ];

  int questionNum = 0;
  bool isAnswered = false;_

  MaterialStateProperty<Color?> checkAnswer(int ans) {
    if (isAnswered && ans == quizQuestions[questionNum]["CorrectOption"]) {
      return MaterialStateProperty.all(Colors.green);
    } else if (isAnswered) {
      return MaterialStateProperty.all(Colors.red);
    }
    return MaterialStateProperty.all(Colors.blue);
  }

  void onAnswerSelected(int selectedAnswer) {
    setState(() {
      isAnswered = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 110,
              ),
              Text(
                "Question: ${questionNum + 1} / ${quizQuestions.length}",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "${quizQuestions[questionNum]["Question"]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          for (int i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: isAnswered ? null : () => onAnswerSelected(i),
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(i),
                  ),
                  child: Text(
                    "${String.fromCharCode(65 + i)}. ${quizQuestions[questionNum]["Options"][i]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (questionNum < quizQuestions.length - 1) {
            setState(() {
              questionNum++;
              isAnswered = false;
            });
          }
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
