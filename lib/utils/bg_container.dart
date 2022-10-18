import 'package:breathe_fo_app/utils/constant/app_images.dart';
import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  final Widget child;
  const BgContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImage.bgImage), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
