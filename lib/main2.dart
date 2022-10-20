import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool _isShow = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enables scrolling _isShow = !_isShow;
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Apretame!"),
              onPressed: () {
                print("Apretame");
              },
            ),
            Visibility(
                visible: _isShow,
                child: Container(
                  child: Text('Tableau de bord'),
                ))
          ],
        ),
      ),
    );
  }
}
