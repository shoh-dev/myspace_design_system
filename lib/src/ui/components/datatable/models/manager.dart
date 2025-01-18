import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/datatable/datatable_component.dart';

class DatatableManager extends ChangeNotifier {
  String _filter = "";
  int? _sortColumnIndex;
  bool _sortAscending = true;

  final List<ColumnDef> _columns = [];

  final List<RowDef> _checkedRows = [];

  final _rows = <RowDef>[];

  String get getQueryValue => _filter;

  bool get getSortAscending => _sortAscending;

  int? get getSortColumnIndex => _sortColumnIndex;

  ColumnDef? get getSortColumn {
    if (_sortColumnIndex != null) {
      return _columns[_sortColumnIndex!];
    }
    return null;
  }

  ColumnDef? getColumnFor(int cellIndex) {
    return _columns[cellIndex];
  }

  List<RowDef> get getRows {
    final List<RowDef> rs = [];

    void doFilter() {
      if (_filter.isNotEmpty) {
        //filter
        rs.addAll(List.of(_rows.where((row) {
          return row.cells.any((cell) {
            // switch (cell) {
            //   case TextCellDef _:
            //     final text = cell.value.toString().toLowerCase();
            //     return text.contains(_filter);
            //   case NumberCellDef _:
            //   case CurrencyCellDef _:
            //     final filterNum = num.tryParse(_filter);
            //     if (filterNum == null) return false;
            //     final numVal = cell.value as num;
            //     return numVal == filterNum;
            //   default:
            //     throw "Not implemented";
            // }
            final String text = cell.value.toString().toLowerCase();
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
        final acell = a.cells[_sortColumnIndex!];
        final bcell = b.cells[_sortColumnIndex!];
        if (acell.runtimeType != bcell.runtimeType) {
          throw "Make sure to use the same type of cell for all rows! ${acell.runtimeType} != ${bcell.runtimeType}";
        }
        switch (acell) {
          case TextCellDef _:
            final a = acell;
            final b = bcell as TextCellDef;
            return compare(a.value, b.value);
          case NumberCellDef _:
          case CurrencyCellDef _:
            final a = acell as NumberCellDef;
            final b = bcell as NumberCellDef;
            return compare(a.value, b.value);
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

  List<RowDef> get getCheckedRows => _checkedRows;

  List<RowDef> get getInitialRows => _rows;

  List<ColumnDef> get getColumns => _columns;

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

  ValueChanged<String> get getOnFilterCallback => _onFilter;

  void Function(RowDef row, bool? toggle) get getOnRowSelectedCallback =>
      _onRowSelected;

  void Function(int columnIndex, bool ascending) get getOnSort => _onSort;

  @override
  String toString() {
    return "Filter: $_filter, SortColumnIndex: $_sortColumnIndex, SortAscending: $_sortAscending";
  }
}
