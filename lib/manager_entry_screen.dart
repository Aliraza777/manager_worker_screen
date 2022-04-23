import 'package:flutter/material.dart';
import 'package:manager_worker_screen/show_managers.dart';

class AddManagerScreen extends StatefulWidget {
  AddManagerScreen({Key? key}) : super(key: key);

  @override
  State<AddManagerScreen> createState() => _ManagerScreenState();
}

class _ManagerScreenState extends State<AddManagerScreen> {
  String? value;

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController phoneNo = TextEditingController();

  final formkey = GlobalKey<FormState>();

  List<String> services = [
    "Transport",
    "Inventory",
    "Despensery",
    "Carpenter",
    "Electrical",
    "Plumber",
    "Generator Technician",
    "Mason",
    "AC Technician",
    "Drainage",
    "Cleaning",
    "Cylinder Replacement"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Manager"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  controller: name,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  // validator: (value) =>
                  //     value != null ? "Enter valid full name" : null,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: email,
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  // validator: (value) =>
                  //     value != null ? "Enter correct email" : null,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: phoneNo,
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone_outlined),
                  ),
                  // validator: (value) =>
                  //     value != null ? "Enter correct phone number" : null,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton<String>(
                    elevation: 16,
                    hint: Text("Services"),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    iconSize: 36,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    isExpanded: true,
                    value: value,
                    items: services.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() {
                      this.value = value;
                    }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      addData();
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ShowManager()));
                    },
                    child: Text("Add Manager"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addData() {
    print("$name , $email , $services");
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontSize: 15),
        ),
      );
}
