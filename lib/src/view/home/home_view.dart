import 'package:flutter/material.dart';

import '../../constant/page.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
          centerTitle: true,
        ),
        body: getBody()
    );
  }

  getBody() {
    return Center(
      child: Column(
        children: [
          const Text(
            'Hello World!',
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2
            ),
          ),

          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteConstant.LOGIN1);
              },
              child: const Text(
                'GO'
              )
          )
        ],
      ),
    );
  }
}
