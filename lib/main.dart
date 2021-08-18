import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EntryPage(),
    ),
  );
}

class EntryPage extends StatefulWidget {
  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  final _controller = TextEditingController();

  String title = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        setState(() {
                          title = _controller.text;
                        });
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(title),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'For more information :',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'ConcertOne',
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'https://training.zuri.team/',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('Powered by',
                          style: TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 20.0,
                            //fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'images/zurilogo.png',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('images/hnglogo.png',
                              fit: BoxFit.cover)),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                          height: 50,
                          width: 230,
                          child: Image.asset('images/i4glogo.png',
                              fit: BoxFit.cover)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
