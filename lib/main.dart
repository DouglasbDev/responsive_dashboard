import 'package:flutter/material.dart';
import 'scroll_behavior_custom.dart';
import 'src/ui/responsive/desktop/desktop_scaffold.dart';
import 'src/ui/responsive/mobile/mobile_scaffold.dart';
import 'src/ui/responsive/responsive_layout.dart';
import 'src/ui/responsive/tablet/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollBehaviorCustom(),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
