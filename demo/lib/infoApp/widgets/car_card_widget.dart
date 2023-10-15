import 'package:flutter/material.dart';

class CarCardWidget extends StatelessWidget {
  final String ImagePath;
  final String title;
  final String subtitle;
  final String ImagePath1;
  final String pricetitle;
  final VoidCallback onPressed;

  const CarCardWidget(
      {super.key,
      required this.ImagePath,
      required this.title,
      required this.subtitle,
      required this.ImagePath1,
      required this.pricetitle,
      required this.onPressed});
      
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          margin: const EdgeInsets.all(12),
          width: 400,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  ImagePath,
                  height: 200,
                  width: 200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            ImagePath1,
                            height: 40,
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      pricetitle,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const Divider(
                      color: Colors.black45,
                    ),
                    GestureDetector(
                      onTap: onPressed,
                      child: Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
