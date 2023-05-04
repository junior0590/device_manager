import 'dart:io';

import 'package:image_picker/image_picker.dart';

extension DateTimeExtension on DateTime {
  String getMonthString() {
    switch (month) {
      case 1:
        return 'Jan.';
      case 2:
        return 'Feb.';
      case 3:
        return 'Mar.';
      case 4:
        return 'Apr.';
      case 5:
        return 'May';
      case 6:
        return 'Jun.';
      case 7:
        return 'Jul.';
      case 8:
        return 'Aug.';
      case 9:
        return 'Sept.';
      case 10:
        return 'Oct.';
      case 11:
        return 'Nov.';
      case 12:
        return 'Dec.';
      default:
        return 'Err';
    }
  }
}

extension WeekDayExtension on DateTime {
  String getDayofWeekString() {
    switch (weekday) {
      case 1:
        return 'Mon.';
      case 2:
        return 'Tue.';
      case 3:
        return 'Wed.';
      case 4:
        return 'Thu.';
      case 5:
        return 'Fri.';
      case 6:
        return 'Sat.';
      case 7:
        return 'Sun.';
      default:
        return 'Err';
    }
  }
}

extension FileListExtension on List<XFile> {
  List<File> toFileList() {
    if (this != null || this.isNotEmpty) {
      return this.map((e) => e.toFile()).toList();
    }
    return List.empty();
  }
}

extension FileExtension on XFile {
  File toFile() {
    return File(this.path);
  }
}
