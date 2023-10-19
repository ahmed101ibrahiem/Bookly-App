import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomNewBookWidget extends StatelessWidget {
   CustomNewBookWidget({Key? key,required this.urlImage}) : super(key: key);

  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(imageUrl:urlImage
          ,fit: BoxFit.fill
          ,imageBuilder: (context, imageProvider) =>
              Image.asset('assets/images/test_image.png'),)
      ),
    );
  }
}
