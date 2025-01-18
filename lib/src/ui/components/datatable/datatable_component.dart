import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/datatable/datatable_header_component.dart';
import 'package:myspace_design_system/utils/helpers/context.dart';
import 'package:myspace_design_system/utils/helpers/theme.dart';

export 'models/cell.dart';
export 'models/row.dart';
export 'models/column.dart';
export 'models/manager.dart';

class DatatableComponent extends StatefulComonent {
  const DatatableComponent({
    super.key,
    required this.columns,
    required this.rows,
    this.onLoaded,
    this.manager,
    this.onRowActionPressed,
    this.rowActions = const [],
    this.showCheckboxColumn = false,
  });

  final List<ColumnDef> columns;
  final List<RowDef> rows;
  final ValueChanged<DatatableManager>? onLoaded;
  final DatatableManager? manager;
  final void Function(RowDef row, DropdownItem<String> value)?
      onRowActionPressed;
  final Iterable<DropdownItem<String>> rowActions;
  final bool showCheckboxColumn;

  @override
  State<StatefulWidget> createState() => _DatatableComponentState();
}

class _DatatableComponentState extends State<DatatableComponent> {
  late final DatatableManager manager = widget.manager ?? DatatableManager();

  @override
  void initState() {
    manager.getInitialRows.addAll(List.of(widget.rows));
    manager.getColumns.addAll(List.of(widget.columns));
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
        DatatableHeaderComponent(manager: manager),
        ListenableBuilder(
          listenable: manager,
          builder: (context, child) => SizedBox(
            width: 500,
            child: DataTable(
              border: TableBorder.all(
                color: context.colorScheme.outline,
              ),
              columnSpacing: 16,
              sortAscending: manager.getSortAscending,
              sortColumnIndex: manager.getSortColumnIndex,
              showCheckboxColumn: widget.showCheckboxColumn,
              columns: [
                for (var column in widget.columns)
                  column.buildDataColumn(
                    context,
                    onSort: manager.getOnSort,
                  ),
                if (widget.onRowActionPressed != null)
                  const DataColumn(label: Text("")),
              ],
              rows: [
                if (manager.getRows.isEmpty) ...[
                  DataRow(
                    cells: [
                      const DataCell(
                        Text("No data"),
                        placeholder: true,
                      ),
                      for (var _ in widget.columns) const DataCell(SizedBox()),
                    ],
                  ),
                ],
                for (var row in manager.getRows)
                  DataRow(
                    selected: manager.getCheckedRows.contains(row),
                    onSelectChanged: widget.showCheckboxColumn
                        ? (value) =>
                            manager.getOnRowSelectedCallback(row, value)
                        : null,
                    cells: [
                      for (var cell in row.cells) cell.buildDataCell(context),
                      if (widget.onRowActionPressed != null)
                        DataCell(
                          const SizedBox(),
                          showEditIcon: true,
                          onTapDown: (details) async {
                            final position =
                                context.findRelativeRectPosition(details);

                            if (position == null) return;

                            final action = await showMenu<DropdownItem<String>>(
                                context: context,
                                position: position,
                                items: [
                                  for (var action in widget.rowActions)
                                    PopupMenuItem(
                                        value: action,
                                        child: Text(action.label))
                                ]);
                            if (action != null) {
                              widget.onRowActionPressed!(row, action);
                            }
                          },
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
