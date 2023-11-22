import 'package:flutter_dotenv/flutter_dotenv.dart';
Future<void> loadDotenv() async {
  await dotenv.load(fileName: ".env");
}
