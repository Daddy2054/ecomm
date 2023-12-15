import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: PageView(
            children: const [
              Text('Banner1'),
              Text('Banner2'),
              Text('Banner3'),
            ],
          )
          // child: PageView.builder(
          //   itemCount: _bannerImage.length,
          //   itemBuilder: (context, index) {
          //     return ClipRRect(
          //       borderRadius: BorderRadius.circular(10),
          //       child: CachedNetworkImage(
          //         imageUrl: _bannerImage[index],
          //         fit: BoxFit.cover,
          //         placeholder: (context, url) => Shimmer(
          //           duration: Duration(seconds: 10), //Default value
          //           interval: Duration(
          //               seconds: 10), //Default value: Duration(seconds: 0)
          //           color: Colors.white, //Default value
          //           colorOpacity: 0, //Default value
          //           enabled: true, //Default value
          //           direction: ShimmerDirection.fromLTRB(), //Default Value
          //           child: Container(
          //             color: Colors.white,
          //           ),
          //         ),
          //         errorWidget: (context, url, error) => Icon(Icons.error),
          //       ),
          //     );
          //   },
          // ),
          ),
    );
  }
}
