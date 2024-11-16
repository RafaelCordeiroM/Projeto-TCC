import 'package:fiscal_validator/global/models/xml_model.dart';
import 'package:fiscal_validator/util/convertes.dart';
import 'package:flutter/material.dart';

class HomeTableResultWidget extends StatefulWidget {
  const HomeTableResultWidget({super.key, required this.xmlList});

  final List<XMLModel> xmlList;

  @override
  _HomeTableResultWidgetState createState() => _HomeTableResultWidgetState();
}

class _HomeTableResultWidgetState extends State<HomeTableResultWidget> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  void _onSort<T>(int columnIndex, bool ascending, Comparable<T> Function(XMLModel) getField) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
      widget.xmlList.sort((a, b) {
        final aValue = getField(a);
        final bValue = getField(b);
        return ascending ? Comparable.compare(aValue, bValue) : Comparable.compare(bValue, aValue);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _sortColumnIndex,
            sortAscending: _sortAscending,
            border: TableBorder.all(
              width: 1,
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.outline,
            ),
            columns: [
              DataColumn(
                label: const Text('Chave'),
                onSort: (columnIndex, ascending) => _onSort(columnIndex, ascending, (item) => item.chave ?? ''),
              ),
              DataColumn(
                label: const Text('Numero'),
                onSort: (columnIndex, ascending) => _onSort(columnIndex, ascending, (item) => item.numero),
              ),
              DataColumn(
                label: const Text('Tipo'),
                onSort: (columnIndex, ascending) => _onSort(columnIndex, ascending, (item) => item.modelo),
              ),
              DataColumn(
                label: const Text('Data de Emissão'),
                onSort: (columnIndex, ascending) => _onSort(columnIndex, ascending, (item) => item.dataEmissao!),
              ),
              DataColumn(
                label: const Text('Status'),
                onSort: (columnIndex, ascending) => _onSort(columnIndex, ascending, (item) => item.status),
              ),
              DataColumn(
                label: const Text('Valor'),
                onSort: (columnIndex, ascending) => _onSort(columnIndex, ascending, (item) => item.valor),
              ),
            ],
            rows: widget.xmlList.map((item) {
              return DataRow(
                cells: [
                  DataCell(Text(item.chave != null
                      ? item.chave!
                      : item.inutilizada
                          ? 'INUTILIZAÇÃO ${item.numeroInutIni} ATÉ ${item.numeroInutFin}'
                          : item.incorreta
                              ? 'NOTA INCORRETA - ${item.chave}'
                              : '')),
                  DataCell(Text(item.numero.isNotEmpty ? item.numero : '${item.numeroInutIni} - ${item.numeroInutFin}')),
                  DataCell(Text(item.modelo)),
                  DataCell(Text(dateToString(item.dataEmissao) ?? '')),
                  DataCell(Text(item.status)),
                  DataCell(Text(doubleToCurrency(item.valor) ?? '')),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
