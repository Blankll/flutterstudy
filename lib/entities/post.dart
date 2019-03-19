class Post {
  final int id;
  final String author;
  final String title;
  final String description;
  final String imageUrl;

  Post(
    this.id,
    this.author,
    this.title,
    this.description,
    this.imageUrl
  );
  Post.fromJson(Map json):
    id = json['id'],
    author = json['author'],
    title = json['title'], 
    description = json['description'],
    imageUrl = json['imageUrl'];
  Map toJson() => {
    'title': title,
    'description':description
  };
}