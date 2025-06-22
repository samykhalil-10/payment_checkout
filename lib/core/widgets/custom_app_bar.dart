
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../uitls/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/Arrow.svg',
        height: 18,
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}