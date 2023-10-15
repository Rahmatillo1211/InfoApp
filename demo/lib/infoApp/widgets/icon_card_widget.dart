import 'package:flutter/material.dart';

class IconCardWidget extends StatelessWidget {
  final String ImagePath;
  final String nameLogo;
  final VoidCallback onPressed;

  const IconCardWidget({
    super.key,
    required this.ImagePath,
    required this.nameLogo,
    required this.onPressed
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          // onTap: onPressed,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            height: 65,
            margin: const EdgeInsets.all(12),
            width: 66,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(ImagePath),
            ),
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            nameLogo,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
