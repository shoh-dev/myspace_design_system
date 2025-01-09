// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/components/buttons/icon_button_usecase.dart'
    as _i2;
import 'package:widgetbook_workspace/components/buttons/outlined_button_usecase.dart'
    as _i3;
import 'package:widgetbook_workspace/components/buttons/primary_button_usecase.dart'
    as _i4;
import 'package:widgetbook_workspace/components/buttons/text_button_usecase.dart'
    as _i5;
import 'package:widgetbook_workspace/components/layout/layout_component.dart'
    as _i6;
import 'package:widgetbook_workspace/components/text/text_component.dart'
    as _i7;

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
                    name: 'Icon Button',
                    builder: _i2.buildIconButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Icon Button Disabled',
                    builder: _i2.buildDisabledIconButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button',
                    builder: _i3.buildOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button Disabled',
                    builder: _i3.buildDisabledOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button Disabled with Icon',
                    builder: _i3.buildDisabledIconOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button with Icon',
                    builder: _i3.buildIconOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button',
                    builder: _i4.buildPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button Disabled',
                    builder: _i4.buildDisabledPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button Disabled with Icon',
                    builder: _i4.buildDisabledIconPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button with Icon',
                    builder: _i4.buildIconPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button',
                    builder: _i5.buildTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button Disabled',
                    builder: _i5.buildDisabledTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button Disabled with Icon',
                    builder: _i5.buildDisabledIconTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button with Icon',
                    builder: _i5.buildIconTextButtonUseCase,
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
                    builder: _i6.buildColumn,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Row',
                    builder: _i6.buildRow,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Stack',
                    builder: _i6.buildStack,
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
                    builder: _i7.buildAnyDataText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Currency Text',
                    builder: _i7.buildCurrencyText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Hard Coded Text',
                    builder: _i7.buildHardCodedText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Number Text',
                    builder: _i7.buildNumberText,
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
