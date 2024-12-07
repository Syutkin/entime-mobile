import 'dart:io';

import 'package:flutter/material.dart';

// ToDo: Use or remove this
class SelectFileFormField extends FormField<File> {
  SelectFileFormField({
    super.key,
    super.onSaved,
    super.validator,
    super.forceErrorText,
    super.initialValue,
    super.enabled,
    super.autovalidateMode,
    super.restorationId,
  }) : super(
          builder: (FormFieldState<File> state) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    // state.didChange(state.value - 1);
                  },
                ),
                Text(state.value.toString()),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    // state.didChange(state.value + 1);
                  },
                ),
              ],
            );
          },
        );
}
