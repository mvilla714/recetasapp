import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetasapp/widgets/recipe_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  List<Map<String, dynamic>> recipes = [
    {
      "title": "Bandeja Paisa",
      "descripcion":
          "La bandeja paisa es uno de los platos más representativos de Colombia y la insignia de la gastronomía antioqueña, y es propio de esta región, Antioquia.Una de las características fundamentales de este plato es su abundancia, tanto en cantidad como en variedad de alimentos, de tal modo que la bandeja paisa completa solo cabe servirla en platos grandes llamados bandejas.",
      "imageUrl":
          "https://ichef.bbci.co.uk/news/640/cpsprodpb/134E3/production/_105057097_a226d870-cc5f-4043-9f4b-d452b75cc280.jpg",
    },
    {
      "title": "Chancho al palo",
      "descripcion":
          "El chancho al palo es un potaje perteneciente a la zona norte del país, exactamente en Huaral. Este plato tradicional está compuesto principalmente de carne de cerdo cuya cocción es a fuego de leña de 4 a 5 horas.",
      "imageUrl":
          "https://www.agroperu.pe/wp-content/uploads/agroperu-informa_dia-chancho-al-palo-peru.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mis Recetas",
            style: GoogleFonts.roboto(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: titleController,
                    decoration: InputDecoration(
                      hoverColor: Colors.yellow,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Ingrese el nombre de la receta",
                      focusColor: Colors.amber,
                      prefixIcon: Icon(Icons.title),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: descriptionController,
                    decoration: InputDecoration(
                      hoverColor: Colors.yellow,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Ingrese la descripción de la receta",
                      focusColor: Colors.amber,
                      prefixIcon: Icon(Icons.description),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: urlImageController,
                    decoration: InputDecoration(
                      hoverColor: Colors.yellow,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Ingrese el url de la imagen",
                      focusColor: Colors.amber,
                      prefixIcon: Icon(Icons.image),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //print(titleController.text);
                      //print(descriptionController.text);
                      //print(urlImageController.text);
                      recipes.add({
                        "title": titleController.text,
                        "descripcion": descriptionController.text,
                        "imageUrl": urlImageController.text,
                      });
                      setState(() {});
                    },
                    child: Text("Agregar"),
                  ),

                  ...recipes
                      .map((e) => RecipeItem(
                          title: e["title"],
                          descripcion: e["descripcion"],
                          imageUrl: e["imageUrl"]))
                      .toList(),
                  //RecipeItem(

                  //),
                  SizedBox(
                    height: 15,
                  ),
                  //RecipeItem(

                  //),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
