import 'question.dart';

class QuizCollection {
  int _questionNumber = 0;
  List<Question> _quizCollectionSports = [
    Question(q: 'Italy hosted the FIFA World Cup in 2006', a: false),
    Question(q: 'Red Rum is a famous name in Horse Racing', a: true),
    Question(q: 'London is home to Aston Villa Football Club', a: false),
    Question(q: 'The Chicago Bulls, Boston Celtics and Detroit Pistons are all names of American baseball teams', a: false),
    Question(q: 'Sachin Tendulkar is a famous name in tennis', a: false),
    Question(q: 'Wimbledon tennis player Maria Sharapova was born in Germany', a: false),
    Question(q: 'The first American woman to win Olympic gold in downhill skiing was Lindsey Vonn', a: true),
    Question(q: 'Great Britain held the 2012 Olympics', a: true),
    Question(q: 'The martial art of taekwondo originates from Thailand', a: false),
    Question(q: 'Number 4 is located between 18 and 13 on a standard dart board', a: true),
    Question(q: 'Brazil won the FIFA Football World Cup in 1982 and 2006', a: false),
    Question(q: 'The Gil Evans whistle is used to kick off every opening game of each Rugby World Cup tournament', a: true),
    Question(q: 'Rugby Union World Cup tournaments are held every 2 years', a: false),
    Question(q: 'Magic Johnson played point guard for the Los Angeles Lakers basketball team for thirteen seasons', a: true),
    Question(q: 'Chris Henry Gayle was captain of the West Indies\' Test side cricket club from 2007 - 2010?', a: true),
  ];

  String getQuestion() {
    return _quizCollectionSports[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _quizCollectionSports[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _quizCollectionSports.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _quizCollectionSports.length - 1) {
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
