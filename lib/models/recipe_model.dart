class RecipeModel {
  String title;
  String descripcion;
  String image;
  String? ingredients;
  RecipeModel(
      {required this.title,
      required this.descripcion,
      required this.image,
      this.ingredients});
}
