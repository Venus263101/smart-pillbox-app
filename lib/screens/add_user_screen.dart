import 'package:flutter/material.dart';

class AddUserScreen extends StatefulWidget {
  @override
  _AddUserScreenState createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  int age = 0;
  bool isParalyzed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New User")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
                onSaved: (value) => name = value ?? "",
                validator: (value) =>
                value == null || value.isEmpty ? "Enter name" : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
                onSaved: (value) => age = int.tryParse(value ?? "0") ?? 0,
                validator: (value) =>
                value == null || value.isEmpty ? "Enter age" : null,
              ),
              SwitchListTile(
                title: Text("Paralyzed / Cannot use pillbox"),
                value: isParalyzed,
                onChanged: (val) => setState(() => isParalyzed = val),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // TODO: Add face registration here
                    Navigator.pop(context); // Go back to user selection
                  }
                },
                child: Text("Save User"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
