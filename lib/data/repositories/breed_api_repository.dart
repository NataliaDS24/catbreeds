import 'package:catbreeds/config/env.dart';
import 'package:catbreeds/data/api_helper/api_const.dart';
import 'package:catbreeds/data/api_helper/pretty_dio_logger.dart';
import 'package:catbreeds/data/repositories/images_api_repository.dart';
import 'package:catbreeds/models/breed.dart';
import 'package:dio/dio.dart';

class BreedApiRepository {
  final Dio dio = Dio();
  factory BreedApiRepository() {
    return _singleton;
  }

  BreedApiRepository._internal();

  static final BreedApiRepository _singleton = BreedApiRepository._internal();

  final ImagesApiRepository imagesApiRepository = ImagesApiRepository();

  Future<List<Breed>> getAllBreeds() async {
    List<Breed> listBreeds = [];
    try {
      final String url = '${Env.baseUrl}${ApiConst.breeds}';
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
      List valueList = response.data;
      for (var element in valueList) {
        final breed = Breed.fromMap(map: element);
        if (breed.referenceImageId != null && breed.referenceImageId != '') {
          breed.imageUrl = await imagesApiRepository.getImageUrl(
            id: breed.referenceImageId!,
          );
        }
        listBreeds.add(breed);
      }
      return listBreeds;
    } catch (e) {
      return listBreeds;
    }
  }
}
