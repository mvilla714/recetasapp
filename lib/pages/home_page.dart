import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Ingrese el titulo",
                    label: Text("Nombre"),
                    focusColor: Colors.amber,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 5,
                      ),
                    ),
                    icon: Icon(Icons.people),
                    suffix: Icon(Icons.person_2_outlined),
                    filled: true,
                    fillColor: Colors.indigoAccent,
                    hoverColor: Colors.redAccent,
                    prefixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.red, width: 10),
                    ),
                  ),
                ),
                TextField(
                  //enabled: false,
                  decoration: InputDecoration(
                    hintText: "Ingrese Dirección",
                    label: Text("Dirección"),
                    icon: Icon(Icons.directions),
                    filled: true,
                    fillColor: Colors.indigoAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
