import 'package:catbreeds/config/config_imports.dart';

class Weight {
  final String imperial;
  final String metric;

  Weight({
    required this.imperial,
    required this.metric,
  });

  factory Weight.fromMap({required Map map}) {
    return Weight(
      imperial: map['imperial'] ?? AppStrings.voidText,
      metric: map['metric'] ?? AppStrings.voidText,
    );
  }
}
