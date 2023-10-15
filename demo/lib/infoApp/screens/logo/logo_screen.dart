import 'package:demo/infoApp/screens/logo/constants.dart';
import 'package:demo/infoApp/widgets/icon_card_widget.dart';
import 'package:demo/infoApp/screens/logo/logo_info_page.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 51, 255),
        title: const Center(
          child: Text(
            "Trending Brands",
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
  return Column(
    children: [
      SizedBox(
        height: 725,
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: logoList.length,
          itemBuilder: (_, index) {
            final item = logoList[index] as Map<String, dynamic>?;
            return IconCardWidget(
              ImagePath: item?["ImagePath"],
              nameLogo: item?["NameLogo"],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return LogoinfoPage(
                        logoinfo: item?["logoinfo"],
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    ],
  );
}
