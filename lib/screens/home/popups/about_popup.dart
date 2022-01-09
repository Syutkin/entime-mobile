import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../blocs/blocs.dart';
import '../../screens.dart';

class AboutPopup extends StatelessWidget {
  static const double _textVerticalSeparation = 18;

  const AboutPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bodyTextStyle =
        textTheme.bodyText1!.apply(color: colorScheme.onSurface);
    return AlertDialog(
      content: ListBody(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
//              IconTheme(data: Theme.of(context).iconTheme, child: icon),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListBody(
                    children: <Widget>[
                      Text(BlocProvider.of<AppInfoCubit>(context).appName,
                          style: Theme.of(context).textTheme.headline5),
                      Text(
                          'Версия: ${BlocProvider.of<AppInfoCubit>(context).version}',
                          style: Theme.of(context).textTheme.bodyText2),
                      const SizedBox(height: _textVerticalSeparation),
                      Text('© 2021 Andrey Syutkin',
                          style: Theme.of(context).textTheme.caption),
                      const SizedBox(height: _textVerticalSeparation),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              style: bodyTextStyle,
                              text: '''
Мобильное приложение к системе электронного замера времени на спортивных соревнованиях по даунхилу и эндуро
                                  
Приложение делается в свободное от работы время, используйте на свой страх и риск.
                                  
Замечания и предложения можно оправлять на почту: ''',
                            ),
                            TextSpan(
                              style: bodyTextStyle.copyWith(
                                color: colorScheme.primary,
                              ),
                              text: 'syutkin@fraction.team',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  final Uri _emailLaunchUri = Uri(
                                      scheme: 'mailto',
                                      path: 'syutkin@fraction.team',
                                      queryParameters: {
                                        'subject':
                                            'Entime замечания/предложения'
                                      });
                                  if (await canLaunch(
                                      _emailLaunchUri.toString())) {
                                    await launch(_emailLaunchUri.toString());
                                  } else {
                                    final Error error = ArgumentError(
                                        'Could not launch $_emailLaunchUri');
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
            final String changelogData =
                await rootBundle.loadString('CHANGELOG.md');
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ChangelogScreen(markdownData: changelogData)));
          },
          child: const Text('Список изменений'),
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
