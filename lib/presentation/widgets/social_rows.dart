import 'package:flutter/material.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Image(
          image: AssetImage("images/Google.jpg"),
        ),
        Image(
          image: AssetImage("images/Twitter.jpg"),
        ),
        Image(
          image: AssetImage("images/Facebook.png"),
        ),
        Image(
          image: AssetImage("images/Instagram.png"),
        ),
      ],
    );
  }
}
