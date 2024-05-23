import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveDashBoard(),
    ),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dashboard',
      debugShowCheckedModeBanner: false,
      // useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashBoardView(),
    );
  }
}
