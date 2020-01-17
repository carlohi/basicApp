import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter by Carlos Osses'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Cantidad de veces que has apretado el boton :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: _createButtonsFlutter() 
     );
  }

  Widget _createButtonsFlutter(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 30.0),
          FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _setCounterZero ),
          Expanded(child: SizedBox(width: 5.0)),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: _subtractCounter   ),
          SizedBox(width: 5.0),
          FloatingActionButton(child: Icon(Icons.add), onPressed: _addCounter )
      ],);
    }

    void _addCounter(){
      setState(() {        
      _counter++;
      });
    }

    void _setCounterZero(){
      setState(() {
        _counter = 0;
      });
    }   

    void _subtractCounter(){
      setState(() {
        _counter--;
      });
    }

}
