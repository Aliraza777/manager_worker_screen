import 'package:flutter/material.dart';
import 'package:manager_worker_screen/manager_entry_screen.dart';

class ShowManager extends StatelessWidget {
  ShowManager({Key? key}) : super(key: key);

  List<Map> managers = [
    {
      'Name': 'Zia Ur Rehman',
      'Services': 'Drainage, Cleaning',
      'Phone': 03419797976,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Muhammad Ali Raza',
      'Services': 'Plumer, Electrician',
      'Phone': 03418383882,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 03047188182,
      'Action': 'Update/Delete'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Managers"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AddManagerScreen()));
                    },
                    icon: Icon(Icons.add),
                    label: Text("Add Manager"),
                  ),
                ),
              ],
            ),
            _createDataTable()
            // Table(
            //   border: TableBorder.all(),
            //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            //   children: [
            //     TableRow(
            //       children: <Widget>[
            //         Container(
            //           height: 32,
            //           color: Colors.green,
            //         ),
            //         TableCell(
            //           verticalAlignment: TableCellVerticalAlignment.top,
            //           child: Container(
            //             height: 32,
            //             width: 32,
            //             color: Colors.red,
            //           ),
            //         ),
            //         Container(
            //           height: 64,
            //           color: Colors.blue,
            //         ),
            //       ],
            //     ),
            //     TableRow(
            //       decoration: const BoxDecoration(
            //         color: Colors.grey,
            //       ),
            //       children: <Widget>[
            //         Container(
            //           height: 64,
            //           width: 128,
            //           color: Colors.purple,
            //         ),
            //         Container(
            //           height: 32,
            //           color: Colors.yellow,
            //         ),
            //         Center(
            //           child: Container(
            //             height: 32,
            //             width: 32,
            //             color: Colors.orange,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
        showBottomBorder: true, columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Services')),
      DataColumn(label: Text('Phone')),
      DataColumn(label: Text('Action')),
    ];
  }

  List<DataRow> _createRows() {
    return managers
        .map((manager) => DataRow(cells: [
              DataCell(Text(manager['Name'])),
              DataCell(Text(manager['Services'])),
              DataCell(Text('+' + manager['Phone'].toString())),
              DataCell(Text(manager['Action'])),
            ]))
        .toList();
  }
}
