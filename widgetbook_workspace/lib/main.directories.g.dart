// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/components/buttons/icon_button.dart'
    as _i2;
import 'package:widgetbook_workspace/components/buttons/outlined_button.dart'
    as _i3;
import 'package:widgetbook_workspace/components/buttons/primary_button.dart'
    as _i4;
import 'package:widgetbook_workspace/components/buttons/text_button.dart'
    as _i5;

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
          )
        ],
      )
    ],
  )
];
