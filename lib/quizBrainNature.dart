import 'question.dart';

class QuizCollection {
  int _questionNumber = 0;
  List<Question> _quizCollectionNature = [
    Question(q: 'Some ants are vampires.', a: true),
    Question(q: ' Spiders are classified as dipterans.', a:false ),
    Question(q: 'Bees communicate by dancing.', a: true),
    Question(q: 'All butterflies can fly.', a: false),
    Question(q: ' The honeybee evolved in Africa.', a: true),
    Question(q: 'Vampire bats can drink large amounts of blood.', a: true),
    Question(q: 'The ocelot is a kind of cat.', a: true),
    Question(q: 'The smallest canid is the fennec.', a: true),
    Question(q: 'Indian elephants are larger than African elephants.', a: false),
    Question(q: 'Orangutans are native to Africa.', a: false),
    Question(q: 'Most ants are workers.', a:true ),
    Question(q: 'Spiders do not have antennae.', a: true),
    Question(q: 'The name “ladybug” has a religious origin.', a: true),
    Question(q: 'There are more butterfly species than moth species in the United States.', a: false),
    Question(q: 'Ants have little role in the environment.', a:false ),
    Question(q: 'Kinkajous are often found on the ground.', a: false),
    Question(q: 'Horses never lift all four feet off the ground at once.', a: false),
    Question(q: 'Elephants have such large ears only for display.', a:false ),
    Question(q: 'A water buffalo will sink because of its heavy horns.', a: false),
    Question(q: 'The Quarter Horse is called that because it is three-quarters mule.', a: false),
  ];

  String getQuestion() {
    return _quizCollectionNature[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _quizCollectionNature[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _quizCollectionNature.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _quizCollectionNature.length - 1) {
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



