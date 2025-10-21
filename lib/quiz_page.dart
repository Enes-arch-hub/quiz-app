// import 'package:flutter/material.dart';

// class QuizPage extends StatelessWidget {
//   const QuizPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white38),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: Center(
//                       child: Text(
//                         "Q1/10",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),

//                 Container(
//                   height: 50,
//                   child: Row(children: [Icon(Icons.timer), Text(" 10 s")]),
//                 ),

//                 Container(height: 50, child: Text("Score: 0")),
//               ],
//             ),
//             SizedBox(height: 12),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;

  void answerQuestion(int selectedIndex) {
    if (selectedIndex == questions[currentQuestion].correctIndex) {
      score++;
    }
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (_) => ResultScreen(score: score, total: questions.length),
      //   ),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = questions[currentQuestion];
    return Scaffold(
      appBar: AppBar(
        title: Text("Q${currentQuestion + 1}/${questions.length}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              q.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(
              q.options.length,
              (index) => Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.white24,
                  ),
                  onPressed: () => answerQuestion(index),
                  child: Text(
                    q.options[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
