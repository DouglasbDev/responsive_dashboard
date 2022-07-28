import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/components/card_item.dart';

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
