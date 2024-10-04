import 'package:flutter/material.dart';

class CoustmTextfield extends StatelessWidget {
  const CoustmTextfield({super.key, this.hinttext, this.onsave, this.onchange});
  final String? hinttext;
  final void Function(String?)? onsave;
  final void Function(String?)? onchange;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: TextFormField(
                    validator: (data) {
                      if (data?.isEmpty ?? true) {
                        return 'feild is requird';
                      } else {
                        return null;
                      }
                    },
                    onChanged:onchange ,
                    onSaved: onsave,
                    cursorColor: const Color.fromARGB(255, 79, 33, 243),
                    decoration:  InputDecoration(
                    labelText: hinttext,
                     enabledBorder: const OutlineInputBorder(
                     borderSide:
                       BorderSide(color: Color.fromARGB(255, 20, 75, 121)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                          border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        )),
                  ),
    );


  }
}
class Dropdown extends StatefulWidget {
   const Dropdown({super.key, this.onchange, this.onsave, this.hinttext});
   final String? hinttext;
   final void Function(String?)? onchange;
   final void Function(String?)? onsave;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final List<DropdownMenuItem<String>>?grades=
  [
   const DropdownMenuItem<String>
    (child:Text(
      "grade 1 "
      "grade 2 "
      "grade 3 "
      "grade 4 "
      "grade 5 "
      "grade 6 "
))];

 final List<String> items = ['1', '2', '3','4','5','6'];
  String? selectedValue;
  String? hinttext;

  @override
  Widget build(BuildContext context) {
    return     DropdownButtonFormField<String>(
              value: selectedValue,
              hint: const Text('grade'),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged:widget.onchange,
              validator: (data) {
                      if (data?.isEmpty ?? true) {
                        return 'feild is requird';
                      } else {
                        return null;
                      }
                    },
                    decoration:  InputDecoration(
                    labelText: hinttext,
                     enabledBorder: const OutlineInputBorder(
                     borderSide:
                       BorderSide(color: Color.fromARGB(255, 20, 75, 121)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                          border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        )),
              
            );
            
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedValue;

  final List<String> _items = ['One', 'Two', 'Three'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedValue,
              hint: Text('Select an option'),
              items: _items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select an option';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Process data
                  print('Selected value: $_selectedValue');
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}