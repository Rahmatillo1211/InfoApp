import 'package:demo/infoApp/screens/car/car_info_page.dart';
import 'package:demo/infoApp/screens/car/car_screen.dart';
import 'package:demo/infoApp/screens/car/constants.dart';
import 'package:demo/infoApp/screens/logo/logo_screen.dart';
import 'package:demo/infoApp/widgets/car_card_widget.dart';
import 'package:demo/infoApp/screens/logo/constants.dart';
import 'package:demo/infoApp/widgets/icon_card_widget.dart';
import 'package:demo/infoApp/screens/logo/logo_info_page.dart';
import 'package:flutter/material.dart';

class CarMenuPage extends StatelessWidget {
  const CarMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
        title: const Center(
          child: Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(Icons.location_on, color: Colors.black),
                ),
                TextSpan(
                  text: "Car Menu",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        leading: const Icon(
          Icons.menu_sharp,
          color: Colors.black,
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('images/img/car1.png'),
          )
        ],
      ),
      body: _buildBody(context),
    );
  }
}

_buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let's find your favorite",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "car here",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                    ),
                    hintText: 'Find your car',
                    suffixIcon: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    hintStyle:
                        const TextStyle(color: Colors.black45, fontSize: 20),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 25),
                    child: Row(
                      children: [
                        const Text(
                          "Trending Brands",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        const SizedBox(
                          width: 65,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LogoScreen();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            "View All",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 20),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.black45,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconCardWidget(
                      ImagePath: "images/img/mers.png",
                      nameLogo: 'Mersedes',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[5];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/lambar.png",
                      nameLogo: 'Lambarghini',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[4];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/audi.png",
                      nameLogo: 'Audi',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[0];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/bugat.png",
                      nameLogo: 'Bugatti',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[2];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/mustang.png",
                      nameLogo: 'Mustang',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[6];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/tesla.png",
                      nameLogo: 'Tesla',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[8];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/ferrari.png",
                      nameLogo: 'Ferrari',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[3];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/nissan.png",
                      nameLogo: 'Nissan',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[7];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                    IconCardWidget(
                      ImagePath: "images/img/bmw.png",
                      nameLogo: 'BMW',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              final item = logoList[1];
                              return LogoinfoPage(
                                logoinfo: item["logoinfo"],
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 25),
                    child: Row(
                      children: [
                        const Text(
                          "New cars",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        const SizedBox(
                          width: 142,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Carscreen()),
                            );
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Carscreen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "View All",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 20),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.black45,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CarCardWidget(
                    ImagePath: 'images/img/car1.png',
                    title: 'Ferrari',
                    subtitle: 'see more',
                    ImagePath1: 'images/img/ferrari.png',
                    pricetitle: '\$4,305,000',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            final item = carsList[0];
                            return CarinfoPage(
                              carInfo: item["carInfo"],
                            );
                          },
                        ),
                      );
                    },
                  ),
                  CarCardWidget(
                    ImagePath: 'images/img/car2.png',
                    title: 'Lambarghini',
                    subtitle: 'see more',
                    ImagePath1: 'images/img/lambar.png',
                    pricetitle: '\$213,000',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            final item = carsList[1];
                            return CarinfoPage(
                              carInfo: item["carInfo"],
                            );
                          },
                        ),
                      );
                    },
                  ),
                  CarCardWidget(
                    ImagePath: 'images/img/car3.png',
                    title: 'Bugattti',
                    subtitle: 'see more',
                    ImagePath1: 'images/img/bugat.png',
                    pricetitle: '\$3 000.000',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            final item = carsList[2];
                            return CarinfoPage(
                              carInfo: item["carInfo"],
                            );
                          },
                        ),
                      );
                    },
                  ),
                  CarCardWidget(
                    ImagePath: 'images/img/car4.png',
                    title: 'Mustang',
                    subtitle: 'see more',
                    ImagePath1: 'images/img/mustang.png',
                    pricetitle: '\$32,515',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            final item = carsList[3];
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
            ],
          ),
        ),
      ],
    ),
  );
}
