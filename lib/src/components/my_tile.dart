import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String child;
  final void Function() onTap;
  const MyTile({Key? key, required this.child, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        elevation: 5,
        child: InkWell(
          hoverColor: const Color(0x0ff1f1f1),
          highlightColor: const Color(0x0ff1f1f1),
          borderRadius: BorderRadius.circular(5),
          onTap: onTap,
          child: Container(
            height: 80,
            child: Center(
              child: Text(
                child,
                style: const TextStyle(fontSize: 50, color: Colors.black54),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
