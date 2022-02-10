import 'package:flutter/material.dart';
import 'package:quickbird/presentation/ui/resources/styles.dart';

class WDetailsItem extends StatelessWidget {
  final String name;
  final String value;
  const WDetailsItem({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: Styles.getDetailsTitleStyle(),
        ),
        Text(
          value,
          style: Styles.getDetailsValueStyle(),
        ),
      ],
    );
  }
}
