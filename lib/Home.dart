import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = TextEditingController();

  var age = TextEditingController();

  List person = [
    {"name": "Talha", "age": 30},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: \t\t${person[index]["name"]}"),
                    Text("Age: \t\t${person[index]["age"]}"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Container(
                // height: 100,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 300),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Name"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                              elevation: 8,
                              child: TextFormField(
                                controller: name,
                                // onChanged: (value) {
                                //   person.add({"name": value});
                                // },
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Age"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                              elevation: 8,
                              child: TextFormField(
                                controller: age,
                              )),
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                person.add({
                                  "name": name.text.trim().toString(),
                                  "age": age.text.trim().toString()
                                });
                                // person.add({"age": age.text.trim().toString()});
                                Navigator.pop(context);
                                setState(() {
                                  person;
                                });
                              },
                              child: Text("Submit")),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
