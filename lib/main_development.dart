import 'package:catbreeds/config/env.dart';
import 'package:catbreeds/main.dart';

void main() async {
  Env.environment = Environment.development;
  await runCatBreeds();
}
