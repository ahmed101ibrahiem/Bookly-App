import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/asset_data.dart';
import '../../../../../core/utils/styls.dart';


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: Row(
        children: [
          AspectRatio(aspectRatio: 2.5/4,child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.red,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImgPath)
                )
            ),
          ),),
          const SizedBox(width: 30.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: context.width*0.5,
                  child: const Text('Harry poter and the goblet',
                    maxLines: 2,

                    style: Styles.textStyle20,)),
              const SizedBox(height: 4.0,),
              const Text('Ahmed Ibrahim',style: Styles.textStyle14,),
              const SizedBox(height: 4.0,),
              Row(
                children: [
                  Text('19.0 \$',style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(width: 4.0,),
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
