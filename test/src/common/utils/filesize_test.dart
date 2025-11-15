import 'dart:math';

import 'package:entime/src/common/utils/filesize.dart';
import 'package:test/test.dart';

void main() {
  final dim = ['A', 'B', 'KB', 'MB', 'GB', 'TB', 'PB', 'PB'];
  test('Filesize test', () async {
    const divider = 1024;
    var size = 0;
    expect(RegExp(r'\d+ ' + dim[1]).hasMatch(filesize(size)), true);
    size = 1;
    expect(RegExp(r'\d+ ' + dim[1]).hasMatch(filesize(size)), true);
    size = 1023;
    expect(RegExp(r'\d+ ' + dim[1]).hasMatch(filesize(size)), true);

    for (var i = 1; i <= 6; i++) {
      size = pow(divider, i).toInt();
      expect(RegExp(r'\d+ ' + dim[i + 1]).hasMatch(filesize(size)), true);
      size++;
      expect(RegExp(r'\d+\.00 ' + dim[i + 1]).hasMatch(filesize(size)), true);
      size = pow(divider, i).toInt() * 2 - 1;
      expect(RegExp(r'\d+\.00 ' + dim[i + 1]).hasMatch(filesize(size)), true);
      size++;
      expect(RegExp(r'\d+ ' + dim[i + 1]).hasMatch(filesize(size)), true);
      size++;
      expect(RegExp(r'\d+\.00 ' + dim[i + 1]).hasMatch(filesize(size)), true);
      size = pow(divider, i + 1).toInt() - 1;
      if (size >= 0) {
        expect(RegExp(r'\d+\.00 ' + dim[i + 1]).hasMatch(filesize(size)), true);
      }
    }
  });
}
