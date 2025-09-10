import 'package:flutter/material.dart';
import 'package:flutter/src/material/data_table.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(Colors.cyan),
        border: TableBorder.all(
          width: 0.1,
          // borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
          style: BorderStyle.solid,
        ),
        // columnSpacing: 10,
        dataRowHeight: 30,
        columns: [
          DataColumn(label: Text("name")),
          DataColumn(label: Text("email")),
          DataColumn(label: Text("pass"), numeric: true),
          DataColumn(label: Text("desc")),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text("data")),
              DataCell(Text("data")),
              DataCell(Text("123")),
              DataCell(Text("data")),
            ],
          ),
          DataRow(
            selected: true,
            cells: [
              DataCell(Text("data")),
              DataCell(Text("data")),
              DataCell(Text("456")),
              DataCell(Text("data")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("data")),
              DataCell(Text("data")),
              DataCell(Text("789")),
              DataCell(Text("data")),
            ],
          ),
        ],
      ),
    );
  }
}
