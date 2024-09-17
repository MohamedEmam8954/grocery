import 'package:flutter/material.dart';
import 'package:grocery/core/utils/app_strings.dart';
import 'package:grocery/core/utils/customAppBar.dart';
import 'package:grocery/features/home/presentation/widgets/browseallProductBody.dart';

class BrowseAllProductView extends StatelessWidget {
  const BrowseAllProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        appBar: CustomAppBar(title: AppStrings.allProducts),
        body: BrowseAllProductBody(),
      ),
    );
  }
}