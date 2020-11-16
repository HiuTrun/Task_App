import 'package:clockapp/data.dart';
import 'package:clockapp/enums.dart';
import 'package:clockapp/models/menu_info.dart';
import 'package:clockapp/views/clock_page.dart';
import 'package:clockapp/views/alarm_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF2d2f41),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: menuItems
                  .map((currentMenuInfo) => buldMenuButton(currentMenuInfo))
                  .toList(),
            ),
            VerticalDivider(
              color: Colors.white54,
              width: 2,
            ),
            Expanded(
              child: Consumer<MenuInfo>(
                builder: (context, value, child) {
                  if (value.menuType == MenuType.clock)
                    return ClockPage();
                  else if (value.menuType == MenuType.alarm) return AlarmPage();
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buldMenuButton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
      builder: (context, value, child) => FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(15))),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
        onPressed: () {
          var menuInfo = Provider.of<MenuInfo>(context, listen: false);
          menuInfo.updatedMenu(currentMenuInfo);
        },
        color: currentMenuInfo.menuType == value.menuType
            ? Colors.grey[900]
            : Colors.transparent,
        child: Column(
          children: [
            Image.asset(
              currentMenuInfo.path,
              width: 50,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              currentMenuInfo.title,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
