import 'package:flutter/cupertino.dart';

class WeatherCard extends StatelessWidget {
  final String title;
  final int temperature;
  final String iconCode;

  const WeatherCard({
    required this.title,
    required this.temperature,
    required this.iconCode,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(9),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
                  "http://openweathermap.org/img/wn/${this.iconCode}@4x.png"),
              Text(
                '${this.temperature}°',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                'Feels like ${title}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
