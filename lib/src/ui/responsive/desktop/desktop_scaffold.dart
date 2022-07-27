import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/constants.dart';

import '../../../components/card_item.dart';
import '../../../components/my_box.dart';
import '../../../components/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
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

  List<CardItem> item = [
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'Zenitsu Agatsuma'),
    CardItem(
        urlImage:
            'https://p4.wallpaperbetter.com/wallpaper/887/471/592/tanjiro-kamado-anime-anime-boys-hd-wallpaper-preview.jpg',
        title: 'Tanjirō Kamado'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'nome'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'nome'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'nome'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackGroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
                  child: Container(
                    height: 150,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, _) => const SizedBox(
                              width: 12,
                            ),
                        itemCount: item.length,
                        itemBuilder: (contex, index) =>
                            buildCard(item: item[index])),
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
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    opacity: 100,
                    image: NetworkImage(
                      'https://i.pinimg.com/736x/68/28/d2/6828d2982d7e5b3a5f03ae09c4ec1552.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.red[500],
                ),
              )),
            ],
          ))
        ],
      ),
    );
  }

  Widget buildCard({required CardItem item}) => Container(
        width: 200,
        child: Column(
          children: [
            Expanded(
                child: Image.network(
              item.urlImage,
              fit: BoxFit.cover,
            )),
            const SizedBox(height: 4),
            Text(
              item.title,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            )
          ],
        ),
      );
}
