import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetasapp/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      //home: Prueba(),
      debugShowCheckedModeBanner: false,
      /*    theme: ThemeData(
        textTheme: GoogleFonts.neonderthawTextTheme(),
      ),*/
    ),
  );
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba"),
      ),
      body: Column(
        children: [
          Text("LOS CONTAINERS SON: "),
          Text("LOS CONTAINERS SON: "),
          //Expanded( toma el alto y acncho disponible

          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Center(
                    child: Text("Hola $index"),
                  ),
                );
              },
            ),
          ),
          Text("Otros hijo"),
          Text("Otros hijo"),
          Text("Otros hijo"),
        ],
      ),
    );
  }
}
