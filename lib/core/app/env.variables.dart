import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnumEnvType { dev, prod }

class EnvVariables {
  EnvVariables._();

  static EnvVariables instanse = EnvVariables._();

  Future<void> init({required EnumEnvType type}) async {
    if (type == EnumEnvType.dev) {
      await dotenv.load(fileName: '.env.dev');
    } else {
      await dotenv.load(fileName: '.env.prod');
    }
    print(dotenv.get('ENV_TYPE'));
  }

  String getEnvType() {
    return dotenv.get('ENV_TYPE');
  }
}
