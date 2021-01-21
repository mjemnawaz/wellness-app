import 'package:flutter/material.dart';
import 'theme/theme.dart' as __theme;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wellness App',
      home: MyHomePage(title: 'Home', theme: new __theme.Theme()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.theme}) : super(key: key);

  final String title;
  final __theme.Theme theme;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  changeTheme({int newTheme}){
    if (newTheme == null)
      widget.theme.setTheme((widget.theme.getTheme()+1)%widget.theme.numTheme());
    else
      widget.theme.setTheme(newTheme);
    debugPrint("COUNTED");
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.theme.getTopBG(), widget.theme.getBotBG()],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ),
          ),
        ),
        onTap: changeTheme(),
      ),
    );
  }
}
