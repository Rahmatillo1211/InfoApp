import 'package:demo/infoApp/screens/car/car_info_widget.dart';
import 'package:flutter/material.dart';

class CarinfoPage extends StatelessWidget {
  final Map<String, dynamic>? carInfo;

  const CarinfoPage({super.key, required this.carInfo});
  @override
  Widget build(BuildContext context) {
    print("carInfo $carInfo");
    return Scaffold(
      body: CarsInfoWidget(
        fuelInfo: carInfo?["fuelInfo"],
        SpeedInfo: carInfo?["SpeedInfo"],
        PriceInfo: carInfo?["PriceInfo"],
        PowerInfo: carInfo?["PowerInfo"],
        mainImage: carInfo?["mainImage"],
      ),
    );
  }
}
