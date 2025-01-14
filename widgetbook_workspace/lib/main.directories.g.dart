// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/components/button_usecase.dart' as _i2;
import 'package:widgetbook_workspace/components/form_usecase.dart' as _i3;
import 'package:widgetbook_workspace/components/layout_usecase.dart' as _i4;
import 'package:widgetbook_workspace/components/text_usecase.dart' as _i5;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'ui',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookFolder(
            name: 'buttons',
            children: [
              _i1.WidgetbookComponent(
                name: 'ButtonComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Destructive Button',
                    builder: _i2.buildDestructiveButton,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Icon Button',
                    builder: _i2.buildIconButton,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button',
                    builder: _i2.buildOutlinedButton,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button',
                    builder: _i2.buildPrimaryButton,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button',
                    builder: _i2.buildTextButton,
                  ),
                ],
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'component',
            children: [
              _i1.WidgetbookComponent(
                name: 'FormFieldComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Checkbox Component',
                    builder: _i3.buildCheckbox,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Dropdown Component',
                    builder: _i3.buildDropdown,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Field Component',
                    builder: _i3.buildTextField,
                  ),
                ],
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'layout',
            children: [
              _i1.WidgetbookComponent(
                name: 'LayoutComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Column',
                    builder: _i4.buildColumn,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Row',
                    builder: _i4.buildRow,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Stack',
                    builder: _i4.buildStack,
                  ),
                ],
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'text',
            children: [
              _i1.WidgetbookComponent(
                name: 'TextComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Any Data Text',
                    builder: _i5.buildAnyDataText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Currency Text',
                    builder: _i5.buildCurrencyText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Hard Coded Text',
                    builder: _i5.buildHardCodedText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Number Text',
                    builder: _i5.buildNumberText,
                  ),
                ],
              )
            ],
          ),
        ],
      )
    ],
  )
];
