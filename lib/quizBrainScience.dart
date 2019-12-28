import 'question.dart';

class QuizCollection {
  int _questionNumber = 0;
  List<Question> _quizCollectionScience = [
    Question(q: 'The longest bone in the human body is the femur', a: true),
    Question(q: 'Earth\'s atmosphere is mostly Nitrogen', a:true ),
    Question(q: 'Joules are a scientific unit of Power', a:false ),
    Question(q: 'Pluto is considered to be a planet in our solar system.', a:false ),
    Question(q: 'The chemical symbol for Tin is Sn', a: true),
    Question(q: 'Carbon-14 is a radioactively stable isotope', a: false),
    Question(q: 'When Hydrogen nuclei fuse, total mass decreases', a:true ),
    Question(q: 'Centipedes are considered insects', a: false),
    Question(q: 'A muon has negative electric charge', a:true ),
    Question(q: 'Brass is an alloy of Copper and Mercury', a: false),
    Question(q: 'A lightyear is a unit of distance', a: true),
    Question(q: 'Uranus is bigger than Saturn', a:false ),
    Question(q: 'Ammonia is a compound of Nitrogen and Hydrogen', a: true),
    Question(q: 'No chemical symbols begin with \'V\'', a:false ),
    Question(q: 'Leptons are made up of quarks', a:false ),
    Question(q: 'The aorta is a vein', a: false),
    Question(q: 'Jupiter was first discovered by Galileo Galile', a: false),
    Question(q: 'Red is higher frequency light than Blue', a: false),
    Question(q: 'A monotreme is a mammal which lays egg', a: true),
    Question(q: 'Albert Einstein never won a Nobel Prize in Physics', a:false ),
    Question(q: 'White Blood Cells have a nucleus', a: true),
    Question(q: 'Water has a higher refractive index than glass', a:false ),
    Question(q: 'Arsenic is an element', a:true ),
    Question(q: 'Avogadro\'s constant is greater than Planck\'s constant', a:true ),
    Question(q: 'Mercury is the hottest planet in the Solar System', a:false ),
    Question(q: 'An alpha particle is identical to a helium nucleus', a:true ),
    Question(q: 'The chemical formula for ethanol is C2H5OH', a:true ),
    Question(q: 'Silver has a higher melting point than Gold', a:false ),
  ];

  String getQuestion() {
    return _quizCollectionScience[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _quizCollectionScience[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _quizCollectionScience.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _quizCollectionScience.length - 1) {
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



