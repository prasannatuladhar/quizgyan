import 'question.dart';

class QuizCollection {
  int _questionNumber = 0;
  List<Question> _quizCollectionHistory = [
    Question(q: 'The Battle of the Bulge occurred during the First World War', a: false),
    Question(q: 'One of the ancient wonders of the world was once located at the Port of Alexandria', a: true),
    Question(q: 'King Henry VIII was 55 years old when he died', a: true),
    Question(q: 'The Korean War began in 1940', a: false),
    Question(q: 'The Greek God \'Zeus\' was given the Roman name \'Jupiter\'', a: true),
    Question(q: 'Kim Campbell served as the second female Prime Minister of Canada', a: false),
    Question(q: 'Christopher Columbus was born in Spain', a: false),
    Question(q: 'The Trojan War involved a wooden horse', a: true),
    Question(q: 'Hannibal crossed the Alps by elephant to attack the Romans', a: true),
    Question(q: 'The Moors invaded the Iberian Peninsula in 711', a: true),
    Question(q: 'Winston Churchill was captured and held prisoner during the Boer War', a:true ),
    Question(q: 'During WWII, a British fighter plane was nicknamed the \'Doodlebug\'', a: false),
    Question(q: 'Anderson shelters were given to people before the start of World War One', a: false),
    Question(q: 'The Cutty Sark clipper ship was built by Scott & Linton in 1869', a:true ),
    Question(q: 'Nepal was unified by King Prithvi Narayan Shah of Gorkha kingdom in the mid-eighteenth century', a:true ),
    Question(q: 'Three of Henry VIII\'s wives were beheaded', a: false),
    Question(q: 'The British royal family\'s name was Spencer before it became Windsor', a: false),
    Question(q: 'Leonardo da Vinci died during the 17th Century', a: false),
    Question(q: 'The British battlecruiser HMS Hood was sunk by the German battleship \'Bismarck\' during WWII', a: true),
    Question(q: 'Six King Georges have worn the crown throughout British history', a: true),
  ];

  String getQuestion() {
    return _quizCollectionHistory[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _quizCollectionHistory[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _quizCollectionHistory.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _quizCollectionHistory.length - 1) {
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



