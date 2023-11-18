import 'package:flutter/material.dart';
import 'package:recetasapp/models/recipe_model.dart';

class RecipePage extends StatelessWidget {
  /*String title;
  String descripcion;
  String urlImage;
  RecipePage(
      {required this.title, required this.descripcion, required this.urlImage});*/
  RecipeModel recipeModel;
  TextEditingController ingrediensController = TextEditingController();
  RecipePage({required this.recipeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeModel.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(5, 5),
                  blurRadius: 10)
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image.network(
                  recipeModel.image,
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(recipeModel.descripcion,
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              TextField(
                maxLines: 8,
                style: TextStyle(color: Colors.blueGrey),
                controller: ingrediensController,
                decoration: InputDecoration(
                  hoverColor: Colors.yellow,
                  contentPadding: EdgeInsets.all(0),
                  hintText: "Ingrese Ingredientes",
                  focusColor: Colors.amber,
                  prefixIcon: Icon(Icons.abc_outlined),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    recipeModel.ingredients = ingrediensController.text;
                    //Navigator.pop(context);
                  },
                  child: Text("data"))
            ],
          ),
        ),
      ),
    );
  }
}
