import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget  child;
  const BackgroundWidget({
    super.key,required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(children: [
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "lib/images/main_top.png",
              height: 220,
            )),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "lib/images/bottom.png",
              height: 150,
            )),
            Center(child: child,)
      ]),
    );
  }
}
