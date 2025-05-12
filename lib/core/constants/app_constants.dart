import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static String apiKey = dotenv.env["WEATHER_API_KEY"] ?? "default-api-key";
}
