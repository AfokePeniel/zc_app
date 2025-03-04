// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String MessageValueKey = 'message';

mixin $DmUserView on StatelessWidget {
  final TextEditingController messageController = TextEditingController();
  final FocusNode messageFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    messageController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            MessageValueKey: messageController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    messageController.dispose();
  }

  void clearText() {
    messageController.clear();
  }
}

extension ValueProperties on FormViewModel {
  String? get messageValue => this.formValueMap[MessageValueKey];

  bool get hasMessage => this.formValueMap.containsKey(MessageValueKey);
}

extension Methods on FormViewModel {}
