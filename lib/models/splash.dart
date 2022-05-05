class Splash {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Splash({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  static List<Splash> data = [
    Splash(
      id: 12,
      title: "AgroClimate",
      description:
          "Your trusted best weather app for farmers with a brand-new look and features. We are now called AgroClimate.",
      imageUrl: "assets/undraw_weather_re_qsmd.svg",
    ),
    Splash(
      id: 11,
      title: "Learn More",
      description:
          "AgroClimate is one of the best farming apps for profitable farming. FarmGo app helps you get real-time weather forecasts ",
      imageUrl: "assets/undraw_weather_app_re_kcb1.svg",
    ),
    Splash(
      id: 15,
      title: "Climate Matters",
      description:
          "The AgroClimate application centralizes on the advancement of climate and weather-based solutions for the agricultural industry.",
      imageUrl: "assets/undraw_wind_turbine_x-2-k4.svg",
    ),
  ];
}
