import 'package:flutter/material.dart';
import 'constant.dart';
import 'quizBrainScience.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ScienceHomePage extends StatefulWidget {
  @override
  _ScienceHomePageState createState() => _ScienceHomePageState();
}

class _ScienceHomePageState extends State<ScienceHomePage> {
  QuizCollection quizCollection = QuizCollection();
  List<Icon> scoreKeeper = [];
  int rightUserAnswer = 0;

  void checkAnswer(bool selectedAnswer) {
    bool correctAnswer = quizCollection.getAnswer();
    if(quizCollection.isFinished()==true){
      setState(() {
        if (quizCollection.isFinished() == true) {

          Alert(
            context: context,
            title: "RESULT",

            desc:
            "You got total of $rightUserAnswer Correct answers among all question",
            image: Image.asset("images/final.png"),
            buttons: [
              DialogButton(
                child: Text(
                  "Play Again",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                color: Color.fromRGBO(0, 179, 134, 1.0),
                radius: BorderRadius.circular(0.0),
              ),
            ],
          ).show();
          quizCollection.reset();
          scoreKeeper=[];
          rightUserAnswer=0;
        }

      });

    }
    else{
      if (selectedAnswer == correctAnswer) {
        scoreKeeper.add(Icon(
          FontAwesomeIcons.checkCircle,
          color: Colors.green,
        ));
        rightUserAnswer++;
      } else {
        scoreKeeper.add(Icon(
          FontAwesomeIcons.timesCircle,
          color: Colors.red,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap:(){
          Navigator.pop(context);
        },child: Icon(Icons.home)),
        title: Center(child: Text('Science Category Questions')),
        backgroundColor: Color(0xFFcc2b5e),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
//            flex: 2,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child:
                Text(quizCollection.getQuestion(), style: displayTextStyle),
              ),
            ),
          ),
          Row(children: <Widget>[
            Expanded(
              child: CustumButton(
                text: Text('True', style: buttonTextStyle),
                color: Colors.green,
                onTap: () {
                  checkAnswer(true);
                  setState(() {
                    quizCollection.nextQuestion();
                  });
                },
              ),
            ),
            Expanded(
              child: CustumButton(
                text: Text('False', style: buttonTextStyle),
                color: primaryColor,
                onTap: () {
                  checkAnswer(false);
                  setState(() {
                    quizCollection.nextQuestion();
                  });
                },
              ),
            ),
          ]),
          SizedBox(
            height: 25.0,
          ),
          Wrap(children: scoreKeeper),
          SizedBox(
            height: 2.0,
          ),
        ],
      ),
    );
  }
}

class CustumButton extends StatefulWidget {
  CustumButton({@required this.color, this.text, this.onTap});
  final Color color;
  final Widget text;
  final Function onTap;

  @override
  _CustumButtonState createState() => _CustumButtonState();
}

class _CustumButtonState extends State<CustumButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.yellow,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: widget.text,
      ),
      color: widget.color,
      onPressed: widget.onTap,
    );
  }
}
