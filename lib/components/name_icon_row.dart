import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget infoField({required String subTitle, required icon}) {
  return Row(
    children: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icon,
          )),
      const SizedBox(
        width: 25,
      ),
      Text(
        subTitle,
        maxLines: 1,
        textAlign: TextAlign.end,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      )
    ],
  );
}
