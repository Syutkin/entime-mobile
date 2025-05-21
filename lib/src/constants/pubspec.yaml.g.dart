/// GENERATED CODE - DO NOT MODIFY BY HAND

/// ***************************************************************************
/// *                            pubspec_generator                            * 
/// ***************************************************************************

/*
  
  MIT License
  
  Copyright (c) 2025 Plague Fox
  
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
const String version = r'0.5.1-dev+462';

/// The major version number: "1" in "1.2.3".
const int major = 0;

/// The minor version number: "2" in "1.2.3".
const int minor = 5;

/// The patch version number: "3" in "1.2.3".
const int patch = 1;

/// The pre-release identifier: "foo" in "1.2.3-foo".
const List<String> pre = <String>[r'dev'];

/// The build identifier: "foo" in "1.2.3+foo".
const List<String> build = <String>[r'462'];

/// Build date in Unix Time (in seconds)
const int timestamp = 1747788695;

/// Name [name]
const String name = r'entime';

/// Description [description]
const String description = r'A mobile application for Entime project.';

/// Repository [repository]
const String repository = r'https://github.com/Syutkin/entime-mobile';

/// Issue tracker [issue_tracker]
const String issueTracker = r'https://github.com/Syutkin/entime-mobile/issues';

/// Homepage [homepage]
const String homepage = r'https://github.com/Syutkin/entime-mobile';

/// Documentation [documentation]
const String documentation = r'';

/// Publish to [publish_to]
const String publishTo = r'none';

/// Environment
const Map<String, String> environment = <String, String>{
  'sdk': '^3.7.0',
  'flutter': '^3.7.0',
};

/// Dependencies
const Map<String, Object> dependencies = <String, Object>{
  'any_date': r'^1.1.2',
  'audioplayers': r'^6.4.0',
  'bloc_concurrency': r'^0.3.0',
  'bot_toast': r'^4.1.3',
  'connectivity_plus': r'^6.1.4',
  'crypto': r'^3.0.6',
  'csv': r'^6.0.0',
  'device_info_plus': r'^11.4.0',
  'drift': r'^2.26.0',
  'dropdown_search': r'^6.0.2',
  'equatable': r'^2.0.7',
  'file_picker': r'^10.1.2',
  'flutter': <String, Object>{
    'sdk': r'flutter',
  },
  'flutter_bloc': r'^9.1.0',
  'flutter_bluetooth_serial': r'^0.4.0',
  'flutter_charset_detector': r'^5.0.0',
  'flutter_localizations': <String, Object>{
    'sdk': r'flutter',
  },
  'flutter_markdown': r'^0.7.6+2',
  'flutter_ntp': r'^0.0.2',
  'flutter_tts': r'^4.2.2',
  'freezed_annotation': r'^3.0.0',
  'http': r'^1.3.0',
  'intl': r'^0.19.0',
  'json_annotation': r'^4.9.0',
  'logger': r'^2.5.0',
  'material_design_icons_flutter': r'^7.0.7296',
  'meta': r'^1.16.0',
  'nested': r'^1.0.0',
  'open_file': r'^3.5.10',
  'path': r'^1.9.1',
  'path_provider': r'^2.1.5',
  'permission_handler': r'^12.0.0+1',
  'pub_semver': r'^2.2.0',
  'rxdart': r'^0.28.0',
  'sentry_flutter': r'^8.14.2',
  'settings_ui': r'^2.0.2',
  'share_plus': r'^11.0.0',
  'shared_preferences': r'^2.5.3',
  'sqlite3': r'^2.7.5',
  'sqlite3_flutter_libs': r'^0.5.32',
  'url_launcher': r'^6.3.1',
  'wakelock_plus': r'^1.3.2',
};

/// Developer dependencies
const Map<String, Object> devDependencies = <String, Object>{
  'bloc_test': r'^10.0.0',
  'build_runner': r'^2.4.15',
  'dart_style': r'^3.0.1',
  'drift_dev': r'^2.26.0',
  'flutter_lints': r'^5.0.0',
  'flutter_test': <String, Object>{
    'sdk': r'flutter',
  },
  'freezed': r'^3.0.6',
  'integration_test': <String, Object>{
    'sdk': r'flutter',
  },
  'json_serializable': r'^6.9.5',
  'mocktail': r'^1.0.4',
  'patrol': r'^3.15.1',
  'patrol_finders': r'^2.7.2',
  'pubspec_generator': r'^3.0.1',
  'test': r'^1.25.15',
  'very_good_analysis': r'^7.0.0',
};

/// Dependency overrides
const Map<String, Object> dependencyOverrides = <String, Object>{
  'flutter_bluetooth_serial': <String, Object>{
    'git': r'https://github.com/Syutkin/flutter_bluetooth_serial.git',
  },
  'flutter_ntp': <String, Object>{
    'git': r'https://github.com/Syutkin/flutter_ntp',
  },
  'settings_ui': <String, Object>{
    'git': <String, Object>{
      'url': r'https://github.com/yako-dev/flutter-settings-ui',
      'ref': r'dev',
    },
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
  'cider': <String, Object>{
    'link_template': <String, Object>{
      'tag': r'https://github.com/Syutkin/entime-mobile/releases/tag/%tag%',
      'diff': r'https://github.com/Syutkin/entime-mobile/compare/%from%...%to%',
    },
  },
  'patrol': <String, Object>{
    'app_name': r'entime',
    'android': <String, Object>{
      'package_name': r'site.syutkin.entime',
    },
  },
};
