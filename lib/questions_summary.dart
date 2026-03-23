import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget{
const QuestionSummary ({super.key, required this.summaryData});

final List<Map<String,Object>> summaryData;
@override
 
 Widget build(context){
    return Column(
      children: summaryData.map(
        (data){
          final isCorrect = data['correct_answer'] == data['user_answer'];
          final circleColor = 
          isCorrect ? const Color(0xFF4CAF50) : const Color(0xFFF44336);

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: circleColor,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    ((data['question_index']as int)+ 1).toString(),
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                )
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Your answer: ${data['correct_answer']}',
                        style: GoogleFonts.lato(
                          color: const Color(0xFF81C784),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          );
        }).toList(),
    );
  }
}