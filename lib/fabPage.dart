import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kContColor = Color(0xFF6D1E30);

const kConTexStyle = TextStyle(
  color: Color(0xFFB7FF51),
  fontSize: 18,
);

const kCountTexStyle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 50,
  fontWeight: FontWeight.bold,
);

class FabPage extends StatefulWidget {
  @override
  _FabPageState createState() => _FabPageState();
}

class _FabPageState extends State<FabPage> {
  int count = 0;
  int minus = 1000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('FloatingActionButton')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: RecycleCont(
                    color: kContColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You have pressed the button this many times',
                          style: kConTexStyle,
                        ),
                        Text(
                          count.toString(),
                          style: kCountTexStyle,
                        ),
                        FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            })
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RecycleCont(
                    color: kContColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You have minus the button this many times',
                          style: kConTexStyle,
                        ),
                        Text(
                          minus.toString(),
                          style: kCountTexStyle,
                        ),
                        FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                minus--;
                              });
                            })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecycleCont extends StatelessWidget {
  RecycleCont({required this.color, required this.child});

  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
