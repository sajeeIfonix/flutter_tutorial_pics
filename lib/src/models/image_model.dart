class ImageModel {
  late int id;
  late String title;
  late String url;

  ImageModel({
    required this.id,
    required this.title,
    required this.url,
  });

  ImageModel.fromJSON(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
