import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

final _globalkey = GlobalKey<FormState>();  

final _fristController = TextEditingController();
final _secondController = TextEditingController();


  // int? first, second;
  int result = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _globalkey,
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value){
                //   first = int.tryParse(value);
                // },
                keyboardType: TextInputType.number,
                controller: _fristController,
                decoration: const InputDecoration(
                  labelText: 'First number',
                  hintText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return'Field cannot be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value){
                //   second = int.tryParse(value);
                // },
                keyboardType: TextInputType.number,
                controller: _secondController,
                decoration: const InputDecoration(
                  labelText: 'second number',
                  hintText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
                 validator: (value) {
                  if(value!.isEmpty){
                    return'Field cannot be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(_globalkey.currentState!.validate()){
                  setState(() {
                    result = int.parse(_fristController.text)+ int.parse(_secondController.text);
                  });
                  }
                }, child: const Text('Add')),
              ),
              const SizedBox(height: 8),
               Text('Result:$result')
            ],
          ),
        ),
      ),
    );
  }
}