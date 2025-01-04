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
                name: 'IconButtonComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Icon',
                    builder: _i2.buildIconButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Icon Disabled',
                    builder: _i2.buildDisabledIconButtonUseCase,
                  ),
                ],
              ),
              _i1.WidgetbookComponent(
                name: 'OutlinedButtonComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Outlined',
                    builder: _i3.buildOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Disabled',
                    builder: _i3.buildDisabledOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined Disabled with Icon',
                    builder: _i3.buildDisabledIconOutlinedButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Outlined with Icon',
                    builder: _i3.buildIconOutlinedButtonUseCase,
                  ),
                ],
              ),
              _i1.WidgetbookComponent(
                name: 'PrimaryButtonComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Primary',
                    builder: _i4.buildPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Disabled',
                    builder: _i4.buildDisabledPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Disabled with Icon',
                    builder: _i4.buildDisabledIconPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary with Icon',
                    builder: _i4.buildIconPrimaryButtonUseCase,
                  ),
                ],
              ),
              _i1.WidgetbookComponent(
                name: 'TextButtonComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Text',
                    builder: _i5.buildTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Disabled',
                    builder: _i5.buildDisabledTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text Disabled with Icon',
                    builder: _i5.buildDisabledIconTextButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Text with Icon',
                    builder: _i5.buildIconTextButtonUseCase,
                  ),
                ],
              ),
            ],
          )
        ],
      )
    ],
  )
];
