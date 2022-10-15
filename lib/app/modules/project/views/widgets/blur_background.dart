import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackGround extends StatelessWidget {
  final double sigma;
  const BlurBackGround({Key? key, this.sigma = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
              child:
                  Image.asset('assets/images/bg-login.png', fit: BoxFit.fill)),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
              child: Container(
                color: Colors.white.withOpacity(0.1),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
