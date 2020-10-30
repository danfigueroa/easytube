import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyTube',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'EasyTube Downloader'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: "EasyTube Downloader",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'EasyTube Downloader',
              style: TextStyle(color: Colors.red),
            ),
          ),
          body: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('assets/images/easytube_icon.png')),
                  TextField(
                      decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: "Paste the YouTube url here",
                  )),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Download audio'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {/** */},
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Download video'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {/** */},
                  ),
                ],
              )),
        ));
  }
}
