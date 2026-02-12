import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
const questions = [
QuizQuestion(
  'Which player has won the most NBA MVP awards?',
  [
    'Micheal Jordan',
    'Lebron James',
    'Kareem Abdul-Jabbar', //correct
    'Bill Russell',
  ]
  ),
  QuizQuestion(
    'Who holds the record for most points scored in NBA history?',
    [
      'Kobe Bryant', 
      'Lebron James', //Correct
      'Kareem-Abdul Jabbar',
      'Micheal Jordan',
    ]
  ),
  QuizQuestion(
    'Which team has won the most NBA championships?',
    [
      'Los Angeles Lakers', 
      'Boston Celtics', //Correct
      'Chicago Bulls',
      'Golden State Warriors',
    ]
  ),
  QuizQuestion(
    'Who scored 100 points in a single NBA game?',
    [
      'Kobe Bryant',
      'Micheal Jordan', 
      'Wilt Chamberlain', //correct
      'Elgin Baylor',
    ]
  ),
  QuizQuestion(
    'How many NBA championships did Michael Jordan win with the Chicago Bulls?',
    [
      '5', 
      '6', //correct
      '7',
      '8',
    ]
  ),
  QuizQuestion(
    'Who is the NBAs all-time leader in assists?',
    [
      'Magic Johnson',
      'Steve Nash',
      'Chris Paul',
      'John Stockton', //correct
    ]
  ),


];