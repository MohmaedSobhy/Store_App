import 'package:flutter/material.dart';
import 'package:store_app/core/utils/images_assets.dart';

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage(AppImagesAssets.noIntrent),
      ),
    );
  }
}
