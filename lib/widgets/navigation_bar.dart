import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Text('logo'),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem(txt: 'Episodes'),
              SizedBox(width: 60),
              _NavBarItem(txt: 'About')
            ],
          ),
          SizedBox(width: 50),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String txt;
  const _NavBarItem({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(fontSize: 18),
    );
  }
}
