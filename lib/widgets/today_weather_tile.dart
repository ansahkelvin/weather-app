import 'package:farmers/models/weather.dart';
import 'package:flutter/material.dart';

class TodayWeatherTile extends StatefulWidget {
  const TodayWeatherTile({Key? key}) : super(key: key);

  @override
  State<TodayWeatherTile> createState() => _TodayWeatherTileState();
}

class _TodayWeatherTileState extends State<TodayWeatherTile> {
  final List<Weather> data = Weather.data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 5,
          crossAxisSpacing: 6,
          childAspectRatio: 3,
        ),
        itemBuilder: (context, index) => Container(
          decoration: const BoxDecoration(),
          child: Column(
            children: [
              Text(
                data[index].time,
                style: const TextStyle(
                  color: Color(0xff2e3151),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  data[index].iconUrl,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "19",
                style: TextStyle(
                  color: Color(0xff2e3151),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
