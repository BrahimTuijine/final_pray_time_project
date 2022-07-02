import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class OnePray extends StatelessWidget {
  final String title;
  final bool state;
  final String time;

  const OnePray({
    Key? key,
    required this.title,
    required this.state,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          time,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        IconButton(
          color: state ? AppColors.lighBlue : Colors.grey,
          onPressed: () {},
          icon: state
              ? const Icon(Icons.notifications_active)
              : const Icon(Icons.notifications_off),
        ),
      ],
    );
  }
}
