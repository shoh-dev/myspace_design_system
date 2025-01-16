import 'package:myspace_design_system/src/ui/components/key/key.dart';
import 'package:flutter/material.dart';

abstract class Component extends StatelessWidget {
  const Component({ComponentKey? key}) : super(key: key);
}

abstract class StatefulComonent extends StatefulWidget {
  const StatefulComonent({super.key});
}

abstract class ComponentState<T extends StatefulComonent> extends State<T> {}

abstract class FormFieldComponent<T> extends FormField<T> {
  const FormFieldComponent({
    super.key,
    required super.builder,
    super.enabled,
    super.initialValue,
    super.onSaved,
    super.validator,
    // super.autovalidateMode = AutovalidateMode.onUserInteraction,
  });
}

abstract class FormFieldComponentState<T> extends FormFieldState<T> {
  //didChange
  //initState
  //dispose
  //reset
}
