import 'package:flutter/material.dart';
import 'package:fweb1/widgets/centered_view.dart';
import 'package:fweb1/widgets/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

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

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: _buildMobile,
      desktop: _buildDesktop,
      tablet: _buildTablet,
    );
  }

  Widget _buildMobile(BuildContext ctx) {
    print('build mobile');
    return Scaffold();
  }

  Widget _buildDesktop(BuildContext ctx) {
    print('build desktop');
    return Scaffold();
  }

  Widget _buildTablet(BuildContext ctx) {
    print('build tablet');
    return Scaffold();
  }
}
