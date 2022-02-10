import 'package:flutter/material.dart';

import '../resources/images.dart';

class WAvatar extends StatelessWidget {
  const WAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            Images.avatar,
          ),
        ),
      ),
    );
  }
}
