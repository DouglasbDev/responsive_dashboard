import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/components/my_box.dart';
import 'package:responsive_dashboard/src/components/my_tile.dart';

import '../../../constants.dart';

class MobileScaffold extends StatefulWidget {
  MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final List _list = [
    'Tanjirō Kamado',
    'Nezuko Kamado',
    'Zenitsu Agatsuma',
    'Inosuke Hashibira',
    'Kyōjurō Rengoku',
    'Giyu Tomioka',
    'Sakonji Urokodaki',
    'Akaza',
    'Tengen Uzui',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myBackGroundColor,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return MyBox();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return MyTile(
                child: _list[index],
              );
            },
          ))
        ],
      ),
    );
  }
}
