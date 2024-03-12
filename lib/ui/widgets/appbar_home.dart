import 'package:catbreeds/config/config_imports.dart';
import 'package:catbreeds/ui/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        AppStrings.appName,
        style: AppTextStyles.whiteInterBold20,
      ),
      centerTitle: true,
      bottom: SearchBarWidget(),
    );
  }

  @override
  Size get preferredSize => const Size(
        double.infinity,
        100,
      );
}
