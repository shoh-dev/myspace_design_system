import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/component/component.dart';

import 'components/text_field_component.dart';

// class Form extends StatefulWidget {
//   const Form({
//     super.key,
//     required this.child,
//   });

//   final Widget Function(GlobalKey<FormState> formKey) child;

//   @override
//   State<Form> createState() => _FormState();
// }

// class _FormState extends State<Form> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: widget.child(_formKey),
//     );
//   }
// }

abstract class FormComponent extends Component {
  const FormComponent({super.key});

  const factory FormComponent.textField({
    String? initialValue,
    ValueChanged<String>? onChanged,
    bool enabled,
  }) = TextFieldComponent;
}
