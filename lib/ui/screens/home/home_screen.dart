import 'package:catbreeds/config/config_imports.dart';
import 'package:catbreeds/ui/screens/home/home_provider.dart';
import 'package:catbreeds/ui/widgets/appbar_home.dart';
import 'package:catbreeds/ui/widgets/card_breed.dart';
import 'package:catbreeds/ui/widgets/loading_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return Scaffold(
      appBar: const AppBarHome(),
      body: provider.isLoading
          ? const LoadingDataWidget()
          : provider.listBreeds.isEmpty && !provider.isShowSearch ||
                  provider.listBreedsSearch.isEmpty && provider.isShowSearch
              ? const Center(
                  child: Text(
                    AppStrings.notBreeds,
                    style: AppTextStyles.primaryInterSemiBold20,
                  ),
                )
              : ListView.builder(
                  itemCount: !provider.isShowSearch
                      ? provider.listBreeds.length
                      : provider.listBreedsSearch.length,
                  itemBuilder: (context, index) => CardBreed(
                    breed: !provider.isShowSearch
                        ? provider.listBreeds[index]
                        : provider.listBreedsSearch[index],
                  ),
                ),
    );
  }
}
