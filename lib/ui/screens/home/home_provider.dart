import 'package:catbreeds/data/repositories/breed_api_repository.dart';
import 'package:catbreeds/models/breed.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    getAllBreeds();
  }

  final BreedApiRepository breedApiRepository = BreedApiRepository();
  List<Breed> listBreeds = [];
  List<Breed> listBreedsSearch = [];
  bool isLoading = true;
  bool isShowSearch = false;

  Future<void> getAllBreeds() async {
    listBreeds = await breedApiRepository.getAllBreeds();
    isLoading = false;
    notifyListeners();
  }

  Future<void> changeLoading(bool loading) async {
    isLoading = loading;
    notifyListeners();
  }

  Future<void> resetSearch() async {
    listBreedsSearch = [];
    isShowSearch = false;
    notifyListeners();
  }

  Future<void> searchBreeds(String search) async {
    await changeLoading(true);
    listBreedsSearch = listBreeds
        .where(
          (element) => element.name.toUpperCase().contains(
                search.toUpperCase(),
              ),
        )
        .toList();
    isLoading = false;
    isShowSearch = true;
    notifyListeners();
  }
}
