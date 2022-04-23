import 'package:flutter/material.dart';
import 'package:manager_worker_screen/manager_entry_screen.dart';

import 'widgets/scrollableWidget.dart';

class ShowManager extends StatelessWidget {
  ShowManager({Key? key}) : super(key: key);

  List<Map> managers = [
    {
      'Name': 'Zia Ur Rehman',
      'Services': 'Drainage, Cleaning',
      'Phone': 419797976,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Muhammad Ali Raza',
      'Services': 'Plumer, Electrician',
      'Phone': 418383882,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Saad Khan',
      'Services': 'Security Check, Camera System',
      'Phone': 047188182,
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
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
                ],
              ),
              ScrollableWidget(child: _createDataTable()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createDataTable() {
    return SingleChildScrollView(
      child: DataTable(columns: _createColumns(), rows: _createRows()),
    );
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
              DataCell(Text('+92' + manager['Phone'].toString())),
              DataCell(Text(manager['Action'])),
            ]))
        .toList();
  }
}
