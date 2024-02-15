import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/page.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Select your login page!', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white
                  )),
                  subtitle: Text('Good Morning', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54
                  )),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200)
                  )
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN1);},
                    child: Hero(tag: 'well',
                        child: Image.asset('asset/images/well.png'),
                    ),
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN2);},
                    child: Hero(tag: 'welll',
                      child: Image.asset('asset/images/welll.png'),
                    ),
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN3);},
                    child: Hero(tag: 'wello',
                      child: Image.asset('asset/images/wello.png'),
                    ),
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN4);},
                    child: Hero(tag: 'welloh',
                      child: Image.asset('asset/images/welloh.png'),
                    ),
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN5);},
                    child: Hero(tag: 'wellooh',
                      child: Image.asset('asset/images/wellooh.png'),
                    ),
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN6);},
                    child: Hero(tag: 'ohwell',
                      child: Image.asset('asset/images/ohwell.png'),
                    ),
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(RouteConstant.LOGIN7);},
                    child: Hero(tag: 'ohhwell',
                      child: Image.asset('asset/images/ohhwell.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );

  }
  itemDashboard(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle,
            ),
            child: Icon(iconData, color: Colors.white)
        ),
        const SizedBox(height: 8),
        Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleMedium)
      ],
    ),
  );
}
