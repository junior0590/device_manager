import 'package:flutter/material.dart';

import '../utilities/helpers/helpers.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/animated/spinner.gif',
              width: 60,
            ),
            const SizedBox(height: 10),
            const Text(
              'Loading...',
              style: const TextStyle(
                color: whiteLetters2,
                fontFamily: 'Chivo',
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
