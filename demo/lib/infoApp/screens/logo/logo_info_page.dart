import 'package:demo/infoApp/screens/logo/logo_info_widget.dart';
import 'package:flutter/material.dart';

class LogoinfoPage extends StatelessWidget {
  final Map<String, dynamic>? logoinfo;

  const LogoinfoPage({
    super.key,
    required this.logoinfo,
  });
  @override
  Widget build(BuildContext context) {
    print("logoinfo $logoinfo");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 51, 255),
        title: const Center(
          child: Text(
            "Emblems",
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
      body: LogoInfoWidget(
        ownerInfo: logoinfo?["Owner"],
        incomeInfo: logoinfo?["Income"],
        logoImage: logoinfo?["ImagePath"],
      ),
    );
  }
}
