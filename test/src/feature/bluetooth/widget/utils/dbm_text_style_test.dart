import 'package:entime/src/feature/bluetooth/widget/utils/dbm_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('dBmTextStyle', () {
    test('returns solid colors at range boundaries', () {
      expect(dBmTextStyle(-35).color!.toARGB32(), Colors.greenAccent[700]!.toARGB32());
      expect(dBmTextStyle(-45).color!.toARGB32(), Colors.lightGreen.toARGB32());
      expect(dBmTextStyle(-55).color!.toARGB32(), Colors.lime[600]!.toARGB32());
      expect(dBmTextStyle(-65).color!.toARGB32(), Colors.amber.toARGB32());
      expect(dBmTextStyle(-75).color!.toARGB32(), Colors.deepOrangeAccent.toARGB32());
      expect(dBmTextStyle(-85).color!.toARGB32(), Colors.redAccent.toARGB32());
      expect(dBmTextStyle(-86).color!.toARGB32(), Colors.redAccent.toARGB32());
    });

    test('interpolates between ranges', () {
      final expected = Color.lerp(Colors.greenAccent[700], Colors.lightGreen, 0.5);
      expect(dBmTextStyle(-40).color!.toARGB32(), expected!.toARGB32());
    });
  });
}
