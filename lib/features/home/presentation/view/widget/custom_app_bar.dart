import 'package:bookly_app/core/media_quary/media_quary_value.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/asset_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logoPath,height: context.height /24,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_sharp,size: 25,))
        ],
      ),
    );
  }}