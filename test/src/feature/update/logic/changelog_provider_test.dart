import 'dart:convert';

import 'package:entime/src/feature/update/logic/changelog_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

const _changelogMarkdown = '''
# Changelog
## [1.2.0]
- Added A
## [1.1.0]
- Added B
## [1.0.0]
- Added C
''';

const _changelogWithoutVersions = '''
# Changelog
- Added A
- Added B
''';

class FakeAssetBundle extends CachingAssetBundle {
  FakeAssetBundle(this.assets);

  final Map<String, String> assets;

  @override
  Future<String> loadString(String key, {bool cache = true}) async {
    return assets[key] ?? '';
  }

  @override
  Future<ByteData> load(String key) async {
    final data = Uint8List.fromList(utf8.encode(assets[key] ?? ''));
    return ByteData.view(data.buffer);
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ChangelogProvider', () {
    test('Returns changelog between versions', () async {
      final provider = ChangelogProvider(
        bundle: FakeAssetBundle({'CHANGELOG.md': _changelogMarkdown}),
      );

      final result = await provider.changelog('1.2.0', '1.1.0');

      expect(result, '## [1.2.0]\n- Added A');
    });

    test('Uses latest version when currentVersion is null', () async {
      final provider = ChangelogProvider(
        bundle: FakeAssetBundle({'CHANGELOG.md': _changelogMarkdown}),
      );

      final result = await provider.changelog(null, '1.1.0');

      expect(result, '## [1.2.0]\n- Added A');
    });

    test('Returns until end when fromVersion is not found', () async {
      final provider = ChangelogProvider(
        bundle: FakeAssetBundle({'CHANGELOG.md': _changelogMarkdown}),
      );

      final result = await provider.changelog('1.1.0', '0.9.0');

      expect(result, '## [1.1.0]\n- Added B\n## [1.0.0]\n- Added C\n');
    });

    test('Returns empty string when no version tags exist', () async {
      final provider = ChangelogProvider(
        bundle: FakeAssetBundle({'CHANGELOG.md': _changelogWithoutVersions}),
      );

      final result = await provider.changelog();

      expect(result, '');
    });
  });
}
