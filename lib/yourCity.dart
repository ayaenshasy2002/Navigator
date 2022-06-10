import 'package:flutter/material.dart';
import 'package:flutter_app_task3/yourPlace.dart';

class City extends StatefulWidget {
  const  City({Key? key}) : super(key: key);

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  var city;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          centerTitle: true,
          title: Text("العنوان"),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 18),

        ),
        body: Stack(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 33, vertical: 48),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Text(
                            'ما هي مدينتك',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                            width: 300,
                            child: TextField(
                              onChanged: (inputText){
                                city = inputText;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: this.city,
                                hintText: 'ادخل اسم مدينتك',
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return YourPlace(city);
                                  }
                                  )
                                  );

                                },
                                child: Text('التالي'),
                                style: ElevatedButton.styleFrom(

                                  primary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  elevation: 4.0,

                                )))



                      ],
                    )



                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
