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
import 'package:widgetbook_workspace/components/layout_usecase.dart' as _i3;
import 'package:widgetbook_workspace/components/text_usecase.dart' as _i4;

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
                    builder: _i2.buildOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button Disabled',
                    builder: _i2.buildDisabledOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button Disabled with Icon',
                    builder: _i2.buildDisabledIconOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Button with Icon',
                    builder: _i2.buildIconOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button',
                    builder: _i2.buildPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button Disabled',
                    builder: _i2.buildDisabledPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button Disabled with Icon',
                    builder: _i2.buildDisabledIconPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button with Icon',
                    builder: _i2.buildIconPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button',
                    builder: _i2.buildTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button Disabled',
                    builder: _i2.buildDisabledTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button Disabled with Icon',
                    builder: _i2.buildDisabledIconTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Button with Icon',
                    builder: _i2.buildIconTextButtonUseCase,
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
                    builder: _i3.buildColumn,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Row',
                    builder: _i3.buildRow,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Stack',
                    builder: _i3.buildStack,
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
                    builder: _i4.buildAnyDataText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Currency Text',
                    builder: _i4.buildCurrencyText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Hard Coded Text',
                    builder: _i4.buildHardCodedText,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Number Text',
                    builder: _i4.buildNumberText,
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
