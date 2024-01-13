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

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Selamat Datang'),
    //   ),
    // );
  }

  Widget _buildMobile(BuildContext ctx) {
    print('build mobile');
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   'FWEB-1',
        //   style: Theme.of(ctx).primaryTextTheme.titleLarge,
        // ),
        title: _buildLogo(ctx),
        backgroundColor: Theme.of(ctx).primaryColor,
        foregroundColor: Theme.of(ctx).cardColor,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
    );
  }

  Widget _buildDesktop(BuildContext ctx) {
    print('build desktop');
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 200,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLogo(ctx),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Menu 1'),
                  Text('Menu 2'),
                  Text('Menu 3'),
                  Text('Menu 4'),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Request'),
              ),
            ],
          ),
        ),
        // title: _buildLogo(ctx),
        backgroundColor: Theme.of(ctx).primaryColor,
        foregroundColor: Theme.of(ctx).cardColor,
      ),
    );
  }

  Widget _buildTablet(BuildContext ctx) {
    print('build tablet');
    return Scaffold();
  }

  Widget _buildLogo(BuildContext ctx) {
    return Text(
      'FWEB-1',
      style: Theme.of(ctx).primaryTextTheme.titleLarge,
    );
  }
}
