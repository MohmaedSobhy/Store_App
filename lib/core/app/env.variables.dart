import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvType { dev, prod }

class EnvVariables {
  EnvVariables._();

  static EnvVariables instanse = EnvVariables._();

  Future<void> init({required EnvType type}) async {
    if (type == EnvType.dev) {
      await dotenv.load(fileName: '.env.dev');
    } else {
      await dotenv.load(fileName: '.env.prod');
    }
  }
}
