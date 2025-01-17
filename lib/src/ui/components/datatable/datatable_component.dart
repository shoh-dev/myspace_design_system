import 'package:intl/intl.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';

class DatatableComponent extends StatefulComonent {
  const DatatableComponent({
    super.key,
    required this.columns,
    required this.rows,
    this.onLoaded,
    this.manager,
  });

  final List<ColumnDef> columns;
  final List<RowDef> rows;
  final ValueChanged<DatatableManager>? onLoaded;
  final DatatableManager? manager;

  @override
  State<StatefulWidget> createState() => _DatatableComponentState();
}

class _DatatableComponentState extends State<DatatableComponent> {
  late final DatatableManager manager = widget.manager ?? DatatableManager();

  @override
  void initState() {
    manager._rows.addAll(List.of(widget.rows));
    manager._columns.addAll(List.of(widget.columns));
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.onLoaded?.call(manager);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutComponent.column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        SizedBox(
          width: 200,
          child: TextFieldComponent(
            hintText: "Filter emails",
            canClear: true,
            onChanged: manager._onFilter,
            initialValue: manager._filter,
          ),
        ),
        ListenableBuilder(
          listenable: manager,
          builder: (context, child) => DataTable(
            columnSpacing: 16,
            sortAscending: manager._sortAscending,
            sortColumnIndex: manager._sortColumnIndex,
            columns: [
              for (var column in widget.columns)
                DataColumn(
                  onSort: manager._onSort,
                  label: column.label,
                ),
            ],
            rows: [
              for (var row in manager._getRows)
                DataRow(
                  selected: manager._checkedRows.contains(row),
                  onSelectChanged: (value) =>
                      manager._onRowSelected(row, value),
                  cells: row.cells,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class DatatableManager extends ChangeNotifier {
  String _filter = "";
  int? _sortColumnIndex;
  bool _sortAscending = true;

  final List<ColumnDef> _columns = [];

  final List<RowDef> _checkedRows = [];

  final _rows = <RowDef>[];

  ColumnDef? get getSortColumn {
    if (_sortColumnIndex != null) {
      return _columns[_sortColumnIndex!];
    }
    return null;
  }

  List<RowDef> get _getRows {
    final List<RowDef> rs = [];
    void doFilter() {
      if (_filter.isNotEmpty) {
        //filter
        rs.addAll(List.of(_rows.where((row) {
          return row.cells.any((cell) {
            final String text = cell.child.toString().toLowerCase();
            return text.contains(_filter.toString());
          });
        }).toList()));
      } else {
        rs.addAll(List.of(_rows));
      }
    }

    void doSort() {
      int compare(dynamic a, dynamic b) {
        if (_sortAscending) return a.compareTo(b);
        return b.compareTo(a);
      }

      rs.sort((a, b) {
        final acell = a.rowCells[_sortColumnIndex!];
        final bcell = b.rowCells[_sortColumnIndex!];
        if (acell.runtimeType != bcell.runtimeType) {
          throw "Make sure to use the same type of cell for all rows! ${acell.runtimeType} != ${bcell.runtimeType}";
        }
        switch (acell) {
          case TextCellDef _:
            final a = acell;
            final b = bcell as TextCellDef;
            return compare(a.text, b.text);
          case NumberCellDef _:
          case CurrencyCellDef _:
            final a = acell as NumberCellDef;
            final b = bcell as NumberCellDef;
            return compare(a.number, b.number);
          default:
            throw "Not implemented";
        }
      });
    }

    doFilter();

    if (_sortColumnIndex != null) {
      //must sort
      doSort();
    } else {
      rs.clear();
      doFilter();
    }

    return rs;
  }

  void _onRowSelected(RowDef row, bool? toggle) {
    if (toggle == true) {
      _checkedRows.add(row);
    } else if (toggle == false) {
      _checkedRows.remove(row);
    }
    notifyListeners();
  }

  void _onSort(int columnIndex, bool ascending) {
    if (columnIndex == _sortColumnIndex) {
      if (ascending) {
        _sortAscending = true;
        _sortColumnIndex = null;
      } else {
        _sortColumnIndex = columnIndex;
        _sortAscending = ascending;
      }
    } else {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    }
    notifyListeners();
  }

  void _onFilter(String query) {
    _filter = query.toLowerCase();
    notifyListeners();
  }

  @override
  String toString() {
    return "Filter: $_filter, SortColumnIndex: $_sortColumnIndex, SortAscending: $_sortAscending";
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
    required this.rowCells,
  }) : super(
          cells: rowCells.map((e) => DataCell(e.widget)).toList(),
        );

  final List<CellDef> rowCells;
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
    required this.text,
  }) : super(
          widget: Text(text),
        );

  final String text;
}

class NumberCellDef extends CellDef {
  NumberCellDef({
    required this.number,
  }) : super(
          widget: Text(NumberFormat.compact().format(number)),
        );

  final num number;
}

class CurrencyCellDef extends CellDef {
  CurrencyCellDef({
    required this.number,
  }) : super(
          widget: Text(NumberFormat.currency(symbol: "\$").format(number)),
        );

  final num number;
}

// CELL DEF END
