import 'package:flutter/material.dart';

void main() => runApp(MyWeather());

class MyWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Weather Forecast',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            TextF(),
            TitleM(),
            _temperature(),
            _details(),
            _topic(),
            _forecast(),
          ],
        ),
      ),
    );
  }
}

Widget TextF() {
  return Container(
    child: Row(
      children: <Widget>[
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter City Name',
              hintStyle: TextStyle(color: Colors.white),
              fillColor: Colors.red,
              filled: true,
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

Widget TitleM() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 45.0),
    color: Colors.red,
    child: Column(
      children: <Widget>[
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
        Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
        )
      ],
    ),
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 77,
            ),
          ],
        ),
      ),
      SizedBox(width: 16.0),
      Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '14 °F',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'LIGHT SNOW',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Row _details() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 45,
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 45,
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 45,
            ),
            Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    ],
  );
}

Row _topic() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
      )
    ],
  );
}

Row _forecast() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _forecastContainer('Friday', '6'),
      _forecastContainer('Saturday', '5'),
    ],
  );
}

Widget _forecastContainer(String day, String temperature) {
  return Container(
    color: Colors.red[200],
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: <Widget>[
          Text(
            day,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Row(
            children: <Widget>[
              Text(
                '$temperature °F',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.sunny,
                  color: Colors.white,
                  size: 47,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
