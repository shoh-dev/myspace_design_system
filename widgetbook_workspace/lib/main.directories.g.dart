// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/components/buttons/primary_button.dart'
    as _i2;

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
                name: 'PrimaryButtonComponent',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Primary',
                    builder: _i2.buildPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Disabled',
                    builder: _i2.buildDisabledPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary Disabled with Icon',
                    builder: _i2.buildDisabledIconPrimaryButtonUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Primary with Icon',
                    builder: _i2.buildIconPrimaryButtonUseCase,
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
