import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final child;
  const MyTile({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[600],
        height: 80,
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontSize: 50, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
