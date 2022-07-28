import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/constants.dart';
import '../../../components/build_card.dart';
import '../../../components/card_item.dart';
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
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'nome'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'nome'),
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

  final controller = ScrollController();
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
                SizedBox(
                  height: 150,
                  child: Scrollbar(
                    controller: controller,
                    child: SingleChildScrollView(
                      padding:
                          const EdgeInsets.only(top: 10, right: 5, left: 5),
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: item.length,
                          itemBuilder: (context, index) =>
                              buildCard(item: item[index])),
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
}
