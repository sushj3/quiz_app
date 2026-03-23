import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key,
   required this.chosenAnswers, required this.onRestart});

final List<String> chosenAnswers;
final void Function() onRestart;

List<Map<String, Object>> getSummaryData(){
final List<Map<String, Object>> summary =[];
  for(var i = 0; i < chosenAnswers.length;i++){
    summary.add({
      'question_index': i,
      'question':questions[i].question,
      'correct_answer':questions[i].answers[0],
      'user_answer':chosenAnswers[i]
    });
  }
  return summary;
}

@override
  Widget build(context)
  {
    final summaryData = getSummaryData();
    final totalQuestions = getSummaryData().length;
    final numCorrect = summaryData.where(
      (data){
        return data['correct_answer:'] == data['user_answer'];
      } 
      ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'Quiz Complete!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255,230,200,255),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
            const SizedBox(height:30),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: onRestart,
               style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white54),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),

               ),
               icon: const Icon(Icons.refresh),
               label: Text(
                'Restart Quiz!',
                style: GoogleFonts.lato(fontSize: 16),
               ),
            ),
          ],
        ),
      ),
    );
  }
}
