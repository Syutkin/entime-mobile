import 'package:entime/src/feature/update/logic/changelog_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ChangelogProvider tests', () {
    test('Get all released changelog', () async {
      final changelog = (await ChangelogProvider().changelog()).trim().split(
            '\n',
          );

      expect(changelog.length > 170, true);
      expect(changelog.last.contains('[0.0.1]: https:'), true);
    });

    test('Get all changelog to 0.4.4 version', () async {
      const currentVersion = '0.4.4';
      final changelog = (await ChangelogProvider().changelog(
        currentVersion,
      ))
          .trim()
          .split('\n');

      expect(changelog.first.contains(currentVersion), true);
      expect(changelog.last.contains('[0.0.1]: https:'), true);
      expect(changelog.length, 171);
    });

    test('Get changelog from 0.2.0 to 0.3.3 version', () async {
      const currentVersion = '0.3.3';
      const fromVersion = '0.2.1';
      final changelog = (await ChangelogProvider().changelog(
        currentVersion,
        fromVersion,
      ))
          .trim()
          .split('\n');

      expect(changelog.first.contains(currentVersion), true);
      expect(changelog.last.contains(fromVersion), true);
      expect(changelog.length, 40);
    });
  });
}
