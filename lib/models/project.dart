class Project {
  String name;
  int year;
  String description;
  String image;
  List<String>? technologies;

  Project(
      {required this.name,
      this.technologies,
      required this.year,
      required this.description,
      required this.image});
}
