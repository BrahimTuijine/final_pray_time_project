import 'package:final_pray_time_project/app/core/constants/app_colors.dart';
import 'package:final_pray_time_project/app/modules/home/widgets/one_pray.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: Get.height / 2.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/dhouhr.png'),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: Get.height * .43,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: Get.height * .1,
                      ),
                      const OnePray(
                        time: '04:23',
                        state: false,
                        title: 'sob7',
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: .3,
                        endIndent: 40,
                        indent: 40,
                      ),
                      const OnePray(
                        time: '04:23',
                        state: true,
                        title: 'sob7',
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: .3,
                        endIndent: 40,
                        indent: 40,
                      ),
                      const OnePray(
                        time: '04:23',
                        state: false,
                        title: 'sob7',
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: .3,
                        endIndent: 40,
                        indent: 40,
                      ),
                      const OnePray(
                        time: '04:23',
                        state: true,
                        title: 'sob7',
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: .3,
                        endIndent: 40,
                        indent: 40,
                      ),
                      const OnePray(
                        time: '04:23',
                        state: false,
                        title: 'sob7',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: Get.height * .4,
            child: Transform.translate(
              offset: const Offset(40, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.lighBlue,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * .3, vertical: Get.height * .1 / 6),
                child: Column(
                  children: <Widget>[
                    const Text(
                      '27 jun 2022',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        '15 hijri',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: Get.height * .1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Text(
                            'Bizerte',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Taw9it fi alia',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: Get.width * .1 / 2,
                ),
                const Text(
                  'Maghrib',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
