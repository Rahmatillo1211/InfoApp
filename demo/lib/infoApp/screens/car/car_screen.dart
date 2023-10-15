import 'package:demo/infoApp/screens/car/car_info_page.dart';
import 'package:demo/infoApp/screens/car/constants.dart';
import 'package:demo/infoApp/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';

class Carscreen extends StatelessWidget {
  const Carscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 51, 255),
        title: const Center(
          child: Text(
            "New cars",
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: _buildBody(context),
    );
  }
}

_buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          child: Column(
            children: [
              for (var item in carsList)
                CarCardWidget(
                  ImagePath: item["ImagePath"],
                  title: item["title"],
                  subtitle: item["subtitle"],
                  ImagePath1: item["ImagePath1"],
                  pricetitle: item["pricetitle"],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return CarinfoPage(
                            carInfo: item["carInfo"],
                          );
                        },
                      ),
                    );
                  },
                ),
            ],
          ),
        )
      ],
    ),
  );
}
