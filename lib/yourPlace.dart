import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_task3/home.dart';

class YourPlace extends StatelessWidget {
  var place = "";
  var dataFromCity = "";

  YourPlace(this.dataFromCity);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          centerTitle: true,
          title: Text("العنوان"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(
                  'ما هو عنوان سكنك',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                  width: 300,
                  child: TextField(
                    onChanged: (inputText) {
                      place = inputText;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ادخل تفاصيل سكنك',
                      hintText: this.place,
                    ),
                    autofocus: false,
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Home(dataFromCity, place);
                        }));
                      },
                      child: Text('التالي'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        elevation: 4.0,
                      )))
            ],
          ),
        )),
      ),
    );
  }
}
