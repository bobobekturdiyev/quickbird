import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../resources/images.dart';

class WAvatar extends StatelessWidget {
  final String? image;
  const WAvatar({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: (image != null)
              ? CachedNetworkImageProvider(image!)
              : const AssetImage(
                  Images.avatar,
                ) as ImageProvider,
        ),
      ),
    );
  }
}
