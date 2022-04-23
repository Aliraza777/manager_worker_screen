import 'package:flutter/material.dart';
import 'package:manager_worker_screen/widgets/scrollableWidget.dart';

import 'service_add_screen.dart';

class ShowServices extends StatelessWidget {
  ShowServices({Key? key}) : super(key: key);

  List<Map> services = [
    {
      'Name': 'Transport',
      'Manager': 'Zia Ur Rehman',
      'Worker': 'Nishat, Hasan',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Carpenter',
      'Manager': 'Muhammad Ali Raza',
      'Worker': 'Umer, Shahbaz',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Drainage',
      'Manager': 'Saad Rehman',
      'Worker': 'Sheraz, Mehmood',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Ac Technision',
      'Manager': 'Saad Asmat',
      'Worker': 'Shakoor, Arslan',
      'Action': 'Update/Delete'
    },
    {
      'Name': 'Plumber',
      'Manager': 'Shakeel',
      'Worker': 'Ali, Noman',
      'Action': 'Update/Delete'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
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
                              builder: (_) => AddServiceScreen()));
                    },
                    icon: Icon(Icons.add),
                    label: Text("Add New Service"),
                  ),
                ],
              ),
              ScrollableWidget(child: _createDataTable())
            ],
          ),
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
      DataColumn(label: Text('Managers')),
      DataColumn(label: Text('Workers')),
      DataColumn(label: Text('Action')),
    ];
  }

  List<DataRow> _createRows() {
    return services
        .map((manager) => DataRow(cells: [
              DataCell(Text(manager['Name'])),
              DataCell(Text(manager['Manager'])),
              DataCell(Text(manager['Worker'])),
              DataCell(Text(manager['Action'])),
            ]))
        .toList();
  }
}
