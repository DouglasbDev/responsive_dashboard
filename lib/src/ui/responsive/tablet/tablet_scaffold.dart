import 'package:flutter/material.dart';

import '../../../components/build_card.dart';
import '../../../components/card_item.dart';
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
    'Tengen Uzui',
    'Akaza',
  ];

  List<CardItem> item = [
    CardItem(
        urlImage:
            'https://p4.wallpaperbetter.com/wallpaper/887/471/592/tanjiro-kamado-anime-anime-boys-hd-wallpaper-preview.jpg',
        title: 'Tanjirō Kamado'),
    CardItem(
        urlImage:
            'https://images.wallpapersden.com/image/download/kimetsu-no-yaiba-art-nezuko-kamado_bGhrbWuUmZqaraWkpJRmbmdlrWZlbWU.jpg',
        title: 'Nezuko Kamado'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'Zenitsu Agatsuma'),
    CardItem(
        urlImage:
            'https://img1.ak.crunchyroll.com/i/spire3-tmb/6070dc5bcb56020bbcb0c1981378ac261561190278_main.jpg',
        title: 'Inosuke Hashibira'),
    CardItem(
        urlImage:
            'https://i0.wp.com/www.nerdsite.com.br/wp-content/uploads/2022/04/demon-slayer-rengoku.jpg?fit=1213%2C678&ssl=1',
        title: 'Kyōjurō Rengoku'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'Giyu Tomioka'),
    CardItem(
        urlImage: 'https://pbs.twimg.com/media/EzBARq4XAAIcCEN.jpg:large',
        title: 'Sakonji Urokodaki'),
    CardItem(
        urlImage: 'https://images6.alphacoders.com/104/1040994.jpg',
        title: 'Tengen Uzui'),
    CardItem(
        urlImage:
            'https://criticalhits.com.br/wp-content/uploads/2021/11/Akaza_coaxing_Kyojuro_into_becoming_a_demon.png',
        title: 'Akaza'),
  ];
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myBackGroundColor,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 6,
            child: SizedBox(
              width: double.infinity,
              child: Scrollbar(
                controller: controller,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
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
          ),
          Expanded(
              child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return MyTile(
                onTap: () {},
                child: _list[index],
              );
            },
          ))
        ],
      ),
    );
  }
}
