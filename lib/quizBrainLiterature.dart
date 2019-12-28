import 'question.dart';

class QuizCollection {
  int _questionNumber = 0;
  List<Question> _quizCollectionLiterature = [

    Question(q: 'The language of the Rom, or Gypsy, people comes from India.', a: true),
    Question(q: 'SMS is a signal that means \“Help!\” ', a:false ),
    Question(q: 'English is related to German.', a: true),
    Question(q: 'A bespoke piece of clothing is custom-made.', a: true),
    Question(q: 'The words chortle and galumph were both invented by Lewis Carroll.', a: true),
    Question(q: '\“Empyreal\” means something related to an empire.', a: false),
    Question(q: 'Rhode Island, the American state, is named for the Greek island of Rhodes.', a:false ),
    Question(q: 'Alliteration is the use of repeated sounds for poetic effect.', a:true ),
    Question(q: 'Sanskrit has never had a formal grammar.', a: false),
    Question(q: 'The Bloomsbury group was a football squad.', a:false ),
    Question(q: 'The poet W. B. Yeats was from England.', a: false),
    Question(q: 'Kenyan author Ngugi wa Thiong’o always writes in English.', a:false ),
    Question(q: 'Agatha Christie wrote only novels.', a: false),
    Question(q: 'The Sound and the Fury is a sonnet by William Shakespeare.', a: false),
    Question(q: 'Jeppe Aakjær was a noted Danish explorer.', a: false),
    Question(q: 'The poet Robert Burns grew up in a wealthy English household.', a: false),
    Question(q: 'A ruba’i is the same as a sonnet', a: false),
    Question(q: 'No South African has won a Nobel Prize in literature.', a:false ),
    Question(q: 'The Brothers Grimm, authors of fairy tales such as “Hansel and Gretel,” were from Germany.', a: true),

  ];

  String getQuestion() {
    return _quizCollectionLiterature[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _quizCollectionLiterature[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _quizCollectionLiterature.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _quizCollectionLiterature.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber=-1;
  }
}



