import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../settings.dart';

class SelectThemeScreen extends StatefulWidget {
  const SelectThemeScreen({super.key});

  @override
  State<SelectThemeScreen> createState() => _SelectThemeScreenState();
}

class _SelectThemeScreenState extends State<SelectThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsCubit>();
    final settings = bloc.state;
    final contrast = settings.contrastLevel;

    return Scaffold(
      appBar: AppBar(
        actions: [
          RadioGroup(
            groupValue: context.read<SettingsCubit>().state.seedColor,
            onChanged: (ColorSeed? value) {  },
            child: PopupMenuButton(
              icon: const Icon(Icons.palette),
              itemBuilder: colorItemBuilder,
              onSelected: (colorSeed) => bloc.update(settings.copyWith(seedColor: colorSeed)),
            ),
          ),
          RadioGroup(
            groupValue: context.read<SettingsCubit>().state.dynamicSchemeVariant,
            onChanged: (value) {  },
            child: PopupMenuButton(
              icon: const Icon(Icons.colorize),
              itemBuilder: dynamicSchemeVariantBuilder,
              onSelected: (variant) => bloc.update(settings.copyWith(dynamicSchemeVariant: variant)),
            ),
          ),
          IconButton(
            key: const Key('brightnessButton'),
            onPressed: () {
              bloc.update(
                settings.copyWith(
                  brightness: settings.brightness == Brightness.light ? Brightness.dark : Brightness.light,
                ),
              );
            },
            icon: settings.brightness == Brightness.light ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              height: 64,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                // color: mainColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(Icons.contrast, color: Theme.of(context).colorScheme.onSurface),
                  ),
                  Expanded(
                    child: Slider(
                      value: contrast,
                      min: -1,
                      label: '$contrast',
                      divisions: 4,
                      onChanged: (newValue) {
                        bloc.update(settings.copyWith(contrastLevel: newValue));
                        // setState(() => contrast = newValue);
                      },
                    ),
                  ),
                ],
              ),
            ),
            ColorSample(
              mainText: 'primary',
              secondaryText: 'onPrimary',
              mainColor: Theme.of(context).colorScheme.primary,
              secondaryColor: Theme.of(context).colorScheme.onPrimary,
            ),
            ColorSample(
              mainText: 'primaryContainer',
              secondaryText: 'onPrimaryContainer',
              mainColor: Theme.of(context).colorScheme.primaryContainer,
              secondaryColor: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            ColorSample(
              mainText: 'secondary',
              secondaryText: 'onSecondary',
              mainColor: Theme.of(context).colorScheme.secondary,
              secondaryColor: Theme.of(context).colorScheme.onSecondary,
            ),
            ColorSample(
              mainText: 'secondaryContainer',
              secondaryText: 'onSecondaryContainer',
              mainColor: Theme.of(context).colorScheme.secondaryContainer,
              secondaryColor: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
            ColorSample(
              mainText: 'error',
              secondaryText: 'onError',
              mainColor: Theme.of(context).colorScheme.error,
              secondaryColor: Theme.of(context).colorScheme.onError,
            ),
            ColorSample(
              mainText: 'surface',
              secondaryText: 'onSurface',
              mainColor: Theme.of(context).colorScheme.surface,
              secondaryColor: Theme.of(context).colorScheme.onSurface,
            ),
          ],
        ),
      ),
    );
  }

  List<PopupMenuEntry<ColorSeed>> colorItemBuilder(BuildContext context) {
    final listEntry = <PopupMenuEntry<ColorSeed>>[];
    final brightness = context.read<SettingsCubit>().state.brightness;
    final dynamicSchemeVariant = context.read<SettingsCubit>().state.dynamicSchemeVariant;
    final contrast = context.read<SettingsCubit>().state.contrastLevel;

    for (final colorSeed in ColorSeed.values) {
      listEntry.add(
        PopupMenuItem(
          value: colorSeed,
          child: ListTile(
            title: Text(colorSeed.label),
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    appThemeData(
                      seedColor: colorSeed,
                      brightness: brightness,
                      contrastLevel: contrast,
                      dynamicSchemeVariant: dynamicSchemeVariant,
                    ).colorScheme.surfaceContainer,
              ),
              child: Icon(
                MdiIcons.palette,
                color:
                    appThemeData(
                      seedColor: colorSeed,
                      brightness: brightness,
                      contrastLevel: contrast,
                      dynamicSchemeVariant: dynamicSchemeVariant,
                    ).colorScheme.primary,
              ),
            ),
            trailing: Radio(value: colorSeed),
          ),
        ),
      );
    }
    return listEntry;
  }

  List<PopupMenuEntry<DynamicSchemeVariant>> dynamicSchemeVariantBuilder(BuildContext context) {
    final listEntry = <PopupMenuEntry<DynamicSchemeVariant>>[];
    final brightness = context.read<SettingsCubit>().state.brightness;
    final seedColor = context.read<SettingsCubit>().state.seedColor;
    final contrast = context.read<SettingsCubit>().state.contrastLevel;

    for (final variant in DynamicSchemeVariant.values) {
      listEntry.add(
        PopupMenuItem(
          value: variant,
          child: ListTile(
            title: Text(variant.name),
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    appThemeData(
                      seedColor: seedColor,
                      brightness: brightness,
                      contrastLevel: contrast,
                      dynamicSchemeVariant: variant,
                    ).colorScheme.surfaceContainer,
              ),
              child: Icon(
                MdiIcons.palette,
                color:
                    appThemeData(
                      seedColor: seedColor,
                      brightness: brightness,
                      contrastLevel: contrast,
                      dynamicSchemeVariant: variant,
                    ).colorScheme.primary,
              ),
            ),
            trailing: Radio(value: variant),
          ),
        ),
      );
    }
    return listEntry;
  }
}

class ColorSample extends StatelessWidget {
  const ColorSample({
    required this.mainText,
    required this.secondaryText,
    required this.mainColor,
    required this.secondaryColor,
    super.key,
  });

  final String mainText;
  final String secondaryText;
  final Color mainColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 2, 8, 2),
      height: 64,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: mainColor,
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
      ),
      child: Row(
        children: [
          Expanded(child: Center(child: Text(mainText, style: TextStyle(color: secondaryColor)))),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              // height: 64,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: secondaryColor,
              ),
              child: Center(child: Text(secondaryText, style: TextStyle(color: mainColor))),
            ),
          ),
        ],
      ),
    );
  }
}
