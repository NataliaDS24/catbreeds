import 'package:catbreeds/config/env.dart';
import 'package:catbreeds/data/api_helper/api_const.dart';
import 'package:catbreeds/data/api_helper/pretty_dio_logger.dart';
import 'package:dio/dio.dart';

class ImagesApiRepository {
  final Dio dio = Dio();
  factory ImagesApiRepository() {
    return _singleton;
  }

  ImagesApiRepository._internal();

  static final ImagesApiRepository _singleton = ImagesApiRepository._internal();

  Future<String> getImageUrl({
    required String id,
  }) async {
    try {
      final String url = '${Env.baseUrl}${ApiConst.images}/$id';
      dio.interceptors.add(
        PrettyDioLoggerApp.prettyDioLogger,
      );
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'x-api-key': 'bda53789-d59e-46cd-9bc4-2936630fde39',
          },
        ),
      );
      return response.data['url'];
    } catch (e) {
      return '';
    }
  }
}
