import 'package:flutter/material.dart';
import 'package:triangle_progressbar/procressBar.dart';

class triangleX extends StatelessWidget {
  const triangleX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int columnX = 10;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Triangle'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Container(
                height: MediaQuery.of(context).size.height *0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (var i = 0; i < columnX; i++) rowX(i,columnX-1),],
                  )
              ),
            ),
          ),
          Positioned(
            bottom: -1,
            right: -1,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Percent()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 30, bottom: 0),
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

  rowX(int i,int columnX) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (i == 0 || i == 1 || i == columnX)
          for (var j = 0; j <= i; j++)
            Text(
            " X ",
            style: TextStyle(
              fontSize: 25,
            ),),
        if (i > 1 && i < columnX)
          Row(
            children: [
              Text(
                  " X ",
                  style: TextStyle(
                    fontSize: 25,
                  ),),
              rowY(i, columnX),
              Text(
                " X ",
                style: TextStyle(
                  fontSize: 25,
                ),),
            ],),
      ],
    );
  }

  rowY(int i,int columnX) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          for (var j = 2; j <= i; j++)
            Text(
              " X ",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),),
      ],
    );
  }
}
