import 'package:flutter/material.dart';

import 'package:arogyam/constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Welcome to Arogyam",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: defaultPadding * 2),
        Row(
          children: const [
            Spacer(),
            Expanded(
                flex: 8,
                child: Text(
                  "Picchar",
                )
                //SvgPicture.asset("assets/icons/login.svg"),
                ),
            Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
