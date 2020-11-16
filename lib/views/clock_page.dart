import 'package:clockapp/views/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    String time = DateFormat('HH:mm').format(dateTime).toString();
    String date = DateFormat('EEE, d MMM').format(dateTime).toString();
    String timeZone = dateTime.timeZoneOffset.toString().split('.').first;
    if (!timeZone.startsWith('-')) timeZone = '+' + timeZone;
    return Container(
      padding: EdgeInsets.fromLTRB(32, 60, 32, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Text(
              'Clock',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(time,
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.normal)),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: 'Avenir',
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 32,
          // ),
          Flexible(
            flex: 6,
            child: ClockView(
              size: MediaQuery.of(context).size.height / 3.3,
            ),
          ),
          // SizedBox(
          //   height: 32,
          // ),
          Flexible(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Timezone',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(Icons.language, color: Colors.white),
                    SizedBox(
                      width: 16,
                    ),
                    Text('UTC' + timeZone,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.normal))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.white54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Automatic timezone',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
