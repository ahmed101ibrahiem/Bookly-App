import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:flutter/material.dart';


class CustomNewBookWidget extends StatelessWidget {
  const CustomNewBookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          height: MediaQuery.sizeOf(context).height*0.3,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
              color: Colors.red,
              image: DecorationImage(
              image: AssetImage(AssetsData.testImgPath),
              fit: BoxFit.cover,
            )
          ),
        ),
      ),
    );
  }
}
