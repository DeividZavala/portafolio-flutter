import "package:flutter/material.dart";

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "Welcome Back 👋",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("David's Portafolio",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ],
        ),
        Image.asset(
          "assets/img/avatar.png",
          height: 45,
        ),
      ],
    );
  }
}
