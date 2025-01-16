import 'package:intl/intl.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';

class DatatableComponent extends StatefulComonent {
  const DatatableComponent({
    super.key,
    required this.columns,
    required this.rows,
  });

  final List<ColumnDef> columns;
  final List<RowDef> rows;

  @override
  State<StatefulWidget> createState() => _DatatableComponentState();
}

class _DatatableComponentState extends State<DatatableComponent> {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent.column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        TextFieldComponent(
          hintText: "Filter emails",
          canClear: true,
          onChanged: (value) {
            print(value);
          },
        ),
        DataTable(
          columns: [
            for (var column in widget.columns)
              DataColumn(
                onSort: (columnIndex, ascending) {
                  print(columnIndex);
                  print(ascending);
                },
                label: column.label,
              ),
          ],
          columnSpacing: 16,
          rows: [
            for (var row in widget.rows)
              DataRow(
                cells: row.cells,
              ),
          ],
        ),
      ],
    );
  }
}

// COLUMN DEF START

abstract class ColumnDef extends DataColumn {
  const ColumnDef({
    required super.label,
    this.isEditable = false,
  });

  final bool isEditable;

  factory ColumnDef.text({
    required String label,
    bool isEditable,
  }) = TextColumnDef;

  factory ColumnDef.number({
    required String label,
    bool isEditable,
  }) = NumberColumnDef;
}

class TextColumnDef extends ColumnDef {
  TextColumnDef({
    required String label,
    super.isEditable,
  }) : super(
          label: Text(label),
        );
}

class NumberColumnDef extends ColumnDef {
  NumberColumnDef({
    required String label,
    super.isEditable,
  }) : super(label: Text(label));
}

// COLUMN DEF END

// ROW DEF START

class RowDef extends DataRow {
  RowDef({
    required List<CellDef> cells,
  }) : super(
          cells: cells.map((e) => DataCell(e.widget)).toList(),
        );
}

// ROW DEF END

// CELL DEF START
abstract class CellDef {
  const CellDef({
    required this.widget,
  });

  final Widget widget;

  factory CellDef.text({
    required String text,
  }) = TextCellDef;

  factory CellDef.number({
    required num number,
  }) = NumberCellDef;

  factory CellDef.currency({
    required num number,
  }) = CurrencyCellDef;
}

class TextCellDef extends CellDef {
  TextCellDef({
    required String text,
  }) : super(
          widget: Text(text),
        );
}

class NumberCellDef extends CellDef {
  NumberCellDef({
    required num number,
  }) : super(
          widget: Text(NumberFormat.compact().format(number)),
        );
}

class CurrencyCellDef extends CellDef {
  CurrencyCellDef({
    required num number,
  }) : super(
          widget: Text(NumberFormat.currency(symbol: "\$").format(number)),
        );
}

// CELL DEF END
