import 'package:flutter/material.dart';

import '../../../components/my_box.dart';
import '../../../components/my_tile.dart';
import '../../../constants.dart';

class TabletScaffold extends StatefulWidget {
  TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
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
