import 'package:flutter/material.dart';
import 'package:fweb1/widgets/centered_view.dart';
import 'package:fweb1/widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: MyCenteredView(
        child: Column(
          children: [
            MyNavigationBar(),
          ],
        ),
      ),
    );
  }
}
