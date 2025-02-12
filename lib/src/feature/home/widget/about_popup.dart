import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/localization/localization.dart';
import '../../app_info/bloc/app_info_cubit.dart';
import '../../update/widget/changelog_screen.dart';

class AboutPopup extends StatelessWidget {
  const AboutPopup({super.key});
  static const double _textVerticalSeparation = 18;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bodyTextStyle = textTheme.bodyLarge!.apply(color: colorScheme.onSurface);
    return AlertDialog(
      content: ListBody(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListBody(
                    children: <Widget>[
                      Text(
                        BlocProvider.of<AppInfoCubit>(context).appName,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        Localization.current.I18nAbout_version(BlocProvider.of<AppInfoCubit>(context).version),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: _textVerticalSeparation),
                      Text(Localization.current.I18nAbout_copyright, style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(height: _textVerticalSeparation),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(style: bodyTextStyle, text: Localization.current.I18nAbout_about),
                            TextSpan(
                              style: bodyTextStyle.copyWith(color: colorScheme.primary),
                              text: 'syutkin@fraction.team',
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = () async {
                                      final emailLaunchUri = Uri(
                                        scheme: 'mailto',
                                        path: 'syutkin@fraction.team',
                                        queryParameters: <String, String>{
                                          'subject': Localization.current.I18nAbout_emailSubject,
                                        },
                                      );
                                      if (await canLaunchUrl(emailLaunchUri)) {
                                        await launchUrl(emailLaunchUri);
                                      } else {
                                        final Error error = ArgumentError(
                                          Localization.current.I18nAbout_emailSendError(emailLaunchUri),
                                        );
                                        throw error;
                                      }
                                    },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () async {
            final navigator = Navigator.of(context);
            final changelogData = await rootBundle.loadString('CHANGELOG.md');
            await navigator.push(
              MaterialPageRoute<void>(builder: (context) => ChangelogScreen(markdownData: changelogData)),
            );
          },
          child: Text(Localization.current.I18nAbout_changelog),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(MaterialLocalizations.of(context).closeButtonLabel),
        ),
      ],
      scrollable: true,
    );
  }
}
