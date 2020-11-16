import 'package:clockapp/constants/theme_data.dart';
import 'package:clockapp/enums.dart';
import 'package:clockapp/models/menu_info.dart';
import 'models/alarm_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', path: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm, title: 'Alarm', path: 'assets/alarm_icon.png'),
  MenuInfo(MenuType.timer, title: 'Timer', path: 'assets/timer_icon.png'),
  MenuInfo(MenuType.stopwatch,
      title: 'Stopwatch', path: 'assets/stopwatch_icon.png')
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Office', gradientColors: GradientColors.sky),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),
      description: 'Sport', gradientColors: GradientColors.sunset),
];
