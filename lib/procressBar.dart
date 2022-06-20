import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:triangle_progressbar/triangle.dart';

class Percent extends StatefulWidget {
  const Percent({Key? key}) : super(key: key);

  @override
  State<Percent> createState() => _PercentState();
}

class _PercentState extends State<Percent> {
  int _counter = 100;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 5;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0)
      _counter = _counter - 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('ProgressBar'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 5)
                  ),
                  child: Text(
                    '$_counter%',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        _decrementCounter();
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text('-',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36
                            ),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _incrementCounter();
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text('+',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                            ),),
                        ),
                      ),
                    )
                  ],),
              ],
            ),
          ),
          Positioned(
            bottom: -1,
            right: -1,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => triangleX()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 30, bottom: 30),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle),
                child: Center(
                  child: Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.black,)
                ),
              ),
            ),
          )
        ],),
    );
  }
}
