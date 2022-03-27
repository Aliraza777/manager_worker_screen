import 'package:flutter/material.dart';

import 'add_workers.dart';

class ShowWorker extends StatelessWidget {
  ShowWorker({Key? key}) : super(key: key);

  List<Map> workers = [
    {
      'Name': 'Mubashir',
      'Available': 'Yes',
      'Service': 'Drainage',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Rauf',
      'Available': 'Yes',
      'Service': 'Electrician',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad rehman',
      'Available': 'No',
      'Service': 'Security Check',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Noman',
      'Available': 'No',
      'Service': 'Despensary',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Imran',
      'Available': 'Yes',
      'Service': 'Plumber',
      'Action': 'Update/Delete'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workers"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16.0),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Leave Requests"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => AddWorkerScreen()));
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
      DataColumn(label: Text('Availability')),
      DataColumn(label: Text('Service')),
      DataColumn(label: Text('Action')),
    ];
  }

  List<DataRow> _createRows() {
    return workers
        .map((manager) => DataRow(cells: [
              DataCell(Text(manager['Name'])),
              DataCell(Text(manager['Available'])),
              DataCell(Text(manager['Service'])),
              DataCell(Text(manager['Action'])),
            ]))
        .toList();
  }
}
