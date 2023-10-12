class Beer {
  final int id;
  final String name;
  final String description;
  final String? imageUrl;
  final double abv;

  Beer({
    required this.id,
    required this.name,
    required this.description, 
    this.imageUrl, 
    required this.abv,
  });
}
