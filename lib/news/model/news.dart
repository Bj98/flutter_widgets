class News {
  Source _source;
  String _author;
  String _title;
  String _description;
  String _url;
  String _urlToImage;
  String _publishedAt;
  String _content;

  News(
      {Source source,
        String author,
        String title,
        String description,
        String url,
        String urlToImage,
        String publishedAt,
        String content}) {
    this._source = source;
    this._author = author;
    this._title = title;
    this._description = description;
    this._url = url;
    this._urlToImage = urlToImage;
    this._publishedAt = publishedAt;
    this._content = content;
  }

  Source get source => _source;
  set source(Source source) => _source = source;
  String get author => _author;
  set author(String author) => _author = author;
  String get title => _title;
  set title(String title) => _title = title;
  String get description => _description;
  set description(String description) => _description = description;
  String get url => _url;
  set url(String url) => _url = url;
  String get urlToImage => _urlToImage;
  set urlToImage(String urlToImage) => _urlToImage = urlToImage;
  String get publishedAt => _publishedAt;
  set publishedAt(String publishedAt) => _publishedAt = publishedAt;
  String get content => _content;
  set content(String content) => _content = content;

  News.fromJson(Map<String, dynamic> json) {
    _source =
    json['source'] != null ? new Source.fromJson(json['source']) : null;
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage'];
    _publishedAt = json['publishedAt'];
    _content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._source != null) {
      data['source'] = this._source.toJson();
    }
    data['author'] = this._author;
    data['title'] = this._title;
    data['description'] = this._description;
    data['url'] = this._url;
    data['urlToImage'] = this._urlToImage;
    data['publishedAt'] = this._publishedAt;
    data['content'] = this._content;
    return data;
  }
}

class Source {
  String _name;

  Source({String name}) {
    this._name = name;
  }

  String get name => _name;
  set name(String name) => _name = name;

  Source.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    return data;
  }
}