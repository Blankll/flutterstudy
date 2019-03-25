class CommonModel {
  final String icon;
  final String title;
  final String url;

  CommonModel({
    this.icon, this.title, this.url
  });

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url']
    );
  }
}