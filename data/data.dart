//convert json to dart model

class User {
  String? name;
  String? image;
  bool? isProvider;

  User({this.name, this.image, this.isProvider});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      image: json["image"],
      isProvider: json["isProvider"],
    );
  }
}

class Product {
  String? name;
  num? price;
  Product({this.name, this.price});
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(name: json["name"], price: json["price"]);
  }
}

class DataModel {
  User? user;
  List<String>? interests;
  List<Product>? products;

  DataModel({this.user, this.products, this.interests});

  DataModel.fromJson(Map<String, dynamic> json) {
    DataModel(
      user: json["user"] != null ? User.fromJson(json["user"]) : null,
      interests: json["interests"] != null
          ? (json["interests"] as List<dynamic>)
                .map((e) => e.toString())
                .toList()
          : null,
      products: json["products"] != null
          ? (json["products"] as List<dynamic>)
                .map((e) => Product.fromJson(e))
                .toList()
          : null,
    );
  }
}

class ResponseModel {
  bool? status;
  String? message;
  DataModel? data;
  num? page;
  ResponseModel({this.status, this.message, this.data, this.page});
  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      status: json["status"],
      message: json["message"],
      page: json["page"],
      data: json["data"] != null ? DataModel.fromJson(json["data"]) : null,
    );
  }
}
