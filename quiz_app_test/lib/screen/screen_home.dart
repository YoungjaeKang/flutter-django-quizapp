import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
          backgroundColor: Colors.deepPurple,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('images/quiz.png', width: width * 0.8),
            ),
            Padding(
              padding: EdgeInsets.all(wdith * 0.024),
            ),
            Text('Flutter Quiz App',
                style: TextStyle(
                    fontSize: width * 0.065, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text('퀴즈 풀기 전 안내사항입니다.\n꼼꼼히 읽고 퀴즈 풀기를 눌러주세요.',
                textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(width*0.048),
                ),
                
          ],
        ),
      ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
      width*0.048,
      width*0.024,
      width*0.048,
      width*0.024,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.check_box,
          size: width*0.04,
        ),
        Padding(
          padding: EdgeInsets.only(right: width*0.024),
        ),
        Text(title),
      ],
    ),
    );
  }
}
