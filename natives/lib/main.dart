import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NativesCard(),
  ));
}

class NativesCard extends StatefulWidget {
  const NativesCard({Key? key}) : super(key: key);

  @override
  State<NativesCard> createState() => _NativesCardState();
}

class _NativesCardState extends State<NativesCard> {
  int currentCohort = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Native ID Card'),
        centerTitle: true,
        backgroundColor: Colors.red[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentCohort+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb1.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.red[800],
            ),
            Text(
              'NAME:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Adesuwa',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT COHORT:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$currentCohort',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                ),
                SizedBox(width: 10.0,),
                Text('me@gmail.com',
                style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


