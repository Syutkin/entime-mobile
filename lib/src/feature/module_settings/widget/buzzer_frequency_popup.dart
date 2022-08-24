part of 'popups.dart';

class Note {
  int frequency;
  String name;

  Note(this.name, this.frequency);
}

Future<int?> buzzerFrequencyPopup({
  required String text,
  required BuildContext context,
  required int frequency,
}) async {
  final List<Note> notes = [
    Note('B0', 31),
    Note('C1', 33),
    Note('CS1', 35),
    Note('D1', 37),
    Note('DS1', 39),
    Note('E1', 41),
    Note('F1', 44),
    Note('FS1', 46),
    Note('G1', 49),
    Note('GS1', 52),
    Note('A1', 55),
    Note('AS1', 58),
    Note('B1', 62),
    Note('C2', 65),
    Note('CS2', 69),
    Note('D2', 73),
    Note('DS2', 78),
    Note('E2', 82),
    Note('F2', 87),
    Note('FS2', 93),
    Note('G2', 98),
    Note('GS2', 104),
    Note('A2', 110),
    Note('AS2', 117),
    Note('B2', 123),
    Note('C3', 131),
    Note('CS3', 139),
    Note('D3', 147),
    Note('DS3', 156),
    Note('E3', 165),
    Note('F3', 175),
    Note('FS3', 185),
    Note('G3', 196),
    Note('GS3', 208),
    Note('A3', 220),
    Note('AS3', 233),
    Note('B3', 247),
    Note('C4', 262),
    Note('CS4', 277),
    Note('D4', 294),
    Note('DS4', 311),
    Note('E4', 330),
    Note('F4', 349),
    Note('FS4', 370),
    Note('G4', 392),
    Note('GS4', 415),
    Note('A4', 440),
    Note('AS4', 466),
    Note('B4', 494),
    Note('C5', 523),
    Note('CS5', 554),
    Note('D5', 587),
    Note('DS5', 622),
    Note('E5', 659),
    Note('F5', 698),
    Note('FS5', 740),
    Note('G5', 784),
    Note('GS5', 831),
    Note('A5', 880),
    Note('AS5', 932),
    Note('B5', 988),
    Note('C6', 1047),
    Note('CS6', 1109),
    Note('D6', 1175),
    Note('DS6', 1245),
    Note('E6', 1319),
    Note('F6', 1397),
    Note('FS6', 1480),
    Note('G6', 1568),
    Note('GS6', 1661),
    Note('A6', 1760),
    Note('AS6', 1865),
    Note('B6', 1976),
    Note('C7', 2093),
    Note('CS7', 2217),
    Note('D7', 2349),
    Note('DS7', 2489),
    Note('E7', 2637),
    Note('F7', 2794),
    Note('FS7', 2960),
    Note('G7', 3136),
    Note('GS7', 3322),
    Note('A7', 3520),
    Note('AS7', 3729),
    Note('B7', 3951),
    Note('C8', 4186),
    Note('CS8', 4435),
    Note('D8', 4699),
    Note('DS8', 4978),
  ];

  int _startNote() {
    int i = 0;
    for (final Note note in notes) {
      if (note.frequency == frequency) {
        return i;
      }
      i++;
    }
    return 53; //default, note E5, 659Hz
  }

  double value = _startNote().toDouble();

  return showDialog<int>(
    context: context,
    barrierDismissible: true,
    // dialog is dismissible with a tap on the barrier
    builder: (context) => AlertDialog(
      title: Text(text),
      content: StatefulBuilder(
        builder: (context, setState) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              Localization.current.I18nModuleSettings_noteFrequency(
                notes[value.toInt()].name,
                notes[value.toInt()].frequency,
              ),
            ),
            Slider(
              value: value,
              max: notes.length.toDouble() - 1,
              //label: '${notes[_value.toInt()].name}',
              divisions: notes.length,
              onChanged: (newValue) {
                setState(() => value = newValue);
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(notes[value.toInt()].frequency);
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
}
