import 'question.dart';

class QuizCollection {
  int _questionNumber = 0;
  List<Question> _quizCollectionGeography = [
    Question(q: 'Brasília is the capital city of Brazil', a: true),
    Question(q: 'The Indian Ocean is the third largest ocean in the world', a:true ),
    Question(q: 'There are more countries in Africa than Asia', a:true ),
    Question(q: 'The city of Utrecht is in Holland', a:false ),
    Question(q: 'Seattle is more northerly than New York City', a: true),
    Question(q: 'Rhode Island has a greater population than Mongolia', a:false ),
    Question(q: 'The island of Borneo is occupied by three countries', a: true),
    Question(q: 'Mount Kilimanjaro is higher than Denali', a: false),
    Question(q: 'Memphis is the state capital of Tennessee', a:false ),
    Question(q: 'The Maldives has the lowest high point of any country', a:true ),
    Question(q: 'Japan has the world\'s highest life expectancy', a:false ),
    Question(q: 'The world\'s tallest waterfall is in Venezuela', a:true ),
    Question(q: 'The currency of Switzerland is the Euro', a: false),
    Question(q: 'China borders the same number of countries as Russia', a:true ),
    Question(q: 'Shanghai has a greater population than Beijing', a: true),
    Question(q: 'Russia is the world\'s largest oil producer', a: true),
    Question(q: 'The Sahara Desert has a greater area than USA', a: false),
    Question(q: 'Cyprus is the only country to depict its map on its flag', a:false ),
    Question(q: 'Australia\'s flag contains more stars than New Zealand\'s', a: true),
    Question(q: 'Uruguay has a greater population than Paraguay', a: false),
    Question(q: 'Vanuatu has a greater area than Nauru', a:true ),
    Question(q: 'Madrid is more easterly than London', a: false),
    Question(q: 'Greenland is on the Eurasian tectonic plate', a: false),
    Question(q: 'The Nile River is more than double the length of the Volga', a:false ),
    Question(q: 'Johannesburg is one of South Africa\'s three capital cities', a:false ),
    Question(q: 'Iowa has a greater area than Greece', a:true ),
    Question(q: 'Lake Victoria is larger than Lake Superior', a:false ),
    Question(q: 'Transnistria is a disputed territory in Moldova', a: true),
    Question(q: 'Over a quarter of adults in eSwatini have HIV/AIDS', a: true),
    Question(q: 'Osh is the capital city of Kyrgyzstan', a:false ),
  ];

  String getQuestion() {
    return _quizCollectionGeography[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _quizCollectionGeography[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _quizCollectionGeography.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _quizCollectionGeography.length - 1) {
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



