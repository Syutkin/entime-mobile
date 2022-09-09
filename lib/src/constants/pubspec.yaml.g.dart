/// GENERATED CODE - DO NOT MODIFY BY HAND

/// ***************************************************************************
/// *                            pubspec_generator                            * 
/// ***************************************************************************

/*
  
  MIT License
  
  Copyright (c) 2022 Plague Fox
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
  
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
   
 */

// The pubspec file:
// https://dart.dev/tools/pub/pubspec

// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: unnecessary_raw_strings
// ignore_for_file: use_raw_strings
// ignore_for_file: avoid_escaping_inner_quotes
// ignore_for_file: prefer_single_quotes

/// Current app version
const String version = r'0.5.0-dev+136';

/// The major version number: "1" in "1.2.3".
const int major = 0;

/// The minor version number: "2" in "1.2.3".
const int minor = 5;

/// The patch version number: "3" in "1.2.3".
const int patch = 0;

/// The pre-release identifier: "foo" in "1.2.3-foo".
const List<String> pre = <String>[r'dev'];

/// The build identifier: "foo" in "1.2.3+foo".
const List<String> build = <String>[r'136'];

/// Build date in Unix Time (in seconds)
const int timestamp = 1662713506;

/// Name [name]
const String name = r'entime';

/// Description [description]
const String description = r'A mobile application for Entime project.';

/// Repository [repository]
const String repository = r'';

/// Issue tracker [issue_tracker]
const String issueTracker = r'';

/// Homepage [homepage]
const String homepage = r'';

/// Documentation [documentation]
const String documentation = r'';

/// Publish to [publish_to]
const String publishTo = r'https://pub.dev/';

/// Environment
const Map<String, String> environment = <String, String>{
  'sdk': '>=2.17.0 <3.0.0',
};

/// Dependencies
const Map<String, Object> dependencies = <String, Object>{
  'flutter': <String, Object>{
    'sdk': r'flutter',
  },
  'flutter_localizations': <String, Object>{
    'sdk': r'flutter',
  },
  'bloc_concurrency': r'any',
  'bot_toast': r'any',
  'csv': r'any',
  'device_info_plus': r'any',
  'drift': r'any',
  'equatable': r'any',
  'file_picker': r'any',
  'filesize': r'any',
  'flutter_bloc': r'any',
  'flutter_bluetooth_serial': r'any',
  'flutter_markdown': r'any',
  'flutter_tts': r'any',
  'freezed_annotation': r'any',
  'json_annotation': r'^4.6.0',
  'http': r'any',
  'intl': r'any',
  'logger': r'any',
  'material_design_icons_flutter': r'any',
  'meta': r'any',
  'open_filex': r'any',
  'path': r'any',
  'path_provider': r'any',
  'permission_handler': r'any',
  'pub_semver': r'any',
  'rxdart': r'any',
  'sentry_flutter': r'any',
  'settings_ui': r'any',
  'share_plus': r'any',
  'shared_preferences': r'any',
  'soundpool': r'any',
  'sqflite': r'any',
  'sqlite3_flutter_libs': r'any',
  'url_launcher': r'any',
  'wakelock': r'any',
};

/// Developer dependencies
const Map<String, Object> devDependencies = <String, Object>{
  'bloc_test': r'^9.1.0',
  'build_runner': r'any',
  'dart_code_metrics': r'any',
  'drift_dev': r'any',
  'flutter_lints': r'any',
  'flutter_test': <String, Object>{
    'sdk': r'flutter',
  },
  'freezed': r'any',
  'json_serializable': r'^6.3.1',
  'integration_test': <String, Object>{
    'sdk': r'flutter',
  },
  'mockito': r'any',
  'mocktail': r'any',
  'pubspec_generator': r'any',
  'sqflite_common_ffi': r'any',
};

/// Dependency overrides
const Map<String, Object> dependencyOverrides = <String, Object>{
  'flutter_bluetooth_serial': <String, Object>{
    'git': r'https://github.com/Syutkin/flutter_bluetooth_serial.git',
  },
};

/// Executables
const Map<String, Object> executables = <String, Object>{};

/// Source data from pubspec.yaml
const Map<String, Object> source = <String, Object>{
  'name': name,
  'description': description,
  'repository': repository,
  'issue_tracker': issueTracker,
  'homepage': homepage,
  'documentation': documentation,
  'publish_to': publishTo,
  'version': version,
  'environment': environment,
  'dependencies': dependencies,
  'dev_dependencies': devDependencies,
  'dependency_overrides': dependencyOverrides,
  'flutter': <String, Object>{
    'uses-material-design': true,
    'assets': <Object>[
      r'assets/',
      r'CHANGELOG.md',
    ],
  },
  'flutter_intl': <String, Object>{
    'enabled': true,
    'class_name': r'GeneratedLocalization',
    'main_locale': r'ru',
    'arb_dir': r'lib/src/common/localization',
    'output_dir': r'lib/src/common/localization/generated',
    'use_deferred_loading': false,
  },
};
