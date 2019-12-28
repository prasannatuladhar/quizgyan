import 'package:flutter/material.dart';
import 'geography_home_page.dart';
import 'history_home_page.dart';
import 'literature_home_page.dart';
import 'nature_home_page.dart';
import 'science_home_page.dart';
import 'sport_home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//      ),),
    return Container(
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryHomePage()),
              );
            },
            child: MainContainer(
              imageData: Image.asset('images/king.png'),
              textData: 'History',
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SportHomePage()),
                );
              },
              child: MainContainer(
                imageData: Image.asset('images/sports.png'),
                textData: 'Sports',
              )),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScienceHomePage()),
              );
            },
            child: MainContainer(
              imageData: Image.asset('images/science.png'),
              textData: 'Science',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GeographyHomePage()),
              );
            },
            child: MainContainer(
              imageData: Image.asset('images/globe.png'),
              textData: 'Geography',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NatureHomePage()),
              );
            },
            child: MainContainer(
              imageData: Image.asset('images/nature.png'),
              textData: 'Nature',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LiteratureHomePage()),
              );
            },
            child: MainContainer(
              imageData: Image.asset('images/books.png'),
              textData: 'Literature and Language',
            ),
          ),
        ],
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  MainContainer({@required this.textData, @required this.imageData});
  final String textData;
  final Image imageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            textData,
            style: TextStyle(
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(child: imageData),
        ],
      ),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFcc2b5e), Color(0xFF753a88)])),
    );
  }
}
