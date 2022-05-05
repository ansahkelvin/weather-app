class Weather {
  final String id;
  final String title;
  final String desc;
  final String iconUrl;
  final String time;

  Weather({
    required this.id,
    required this.title,
    required this.desc,
    required this.iconUrl,
    required this.time,
  });

  static List<Weather> data = [
    Weather(
        id: "12",
        title: "sunny",
        desc: "Sunny Day",
        iconUrl: "assets/sunny.png",
        time: "8am"),
    Weather(
        id: "12",
        title: "cloudy",
        desc: "Cloudy Day",
        iconUrl: "assets/cloudy.png",
        time: "11pm"),
    Weather(
        id: "12",
        title: "rain",
        desc: "Rain is pouring",
        iconUrl: "assets/rain.png",
        time: "12pm"),
    Weather(
      id: "12",
      title: "sunny",
      desc: "Sunny day",
      iconUrl: "assets/sunny.png",
      time: "1pm",
    ),
    Weather(
      id: "12",
      title: "cloudy",
      desc: "cloudy",
      iconUrl: "assets/cloudy.png",
      time: "5pm",
    ),
    Weather(
      id: "12",
      title: "cloudy",
      desc: "cloudy",
      iconUrl: "assets/cloudy (1).png",
      time: "7pm",
    ),
    Weather(
      id: "12",
      title: "cloudy",
      desc: "cloudy",
      iconUrl: "assets/cloudy (1).png",
      time: "8pm",
    ),
    Weather(
      id: "12",
      title: "cloudy",
      desc: "cloudy",
      iconUrl: "assets/cloudy (1).png",
      time: "9pm",
    ),
    Weather(
      id: "12",
      title: "cloudy",
      desc: "cloudy",
      iconUrl: "assets/cloudy (1).png",
      time: "10pm",
    ),
  ];
}
