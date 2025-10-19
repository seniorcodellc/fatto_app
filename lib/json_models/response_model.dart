class ResponseModel {
  bool? status;
  String? message;
  int? page;
  DataModel? data;

  ResponseModel({
    required this.status,
    required this.message,
    required this.page,
    required this.data,
  });
  factory ResponseModel.fromJson(json) => ResponseModel(
    status: json['status'],
    message: json['message'],
    page: json['page'],
    data: json['data'] != null ? DataModel.fromJson(json['data']) : null,
  );
}

class DataModel {
  UserModel? userList;
  List<String>? interests;
  List<ProductModel>? productList;
  DataModel({
    required this.userList,
    required this.interests,
    required this.productList,
  });

  factory DataModel.fromJson(json) => DataModel(
    userList: json['user'] != null ? UserModel.fromJson(json['user']) : null,
    interests: json['interests'],
    productList: json['product'] != null
        ? ((json['product'] as List<dynamic>).map(
            (e) => ProductModel.fromJson(e),
          )).toList()
        : null,
  );
}

class UserModel {
  String? name;
  String? image;
  bool? isProvider;
  UserModel({this.name, this.image, this.isProvider});
  factory UserModel.fromJson(json) => UserModel(
    name: json['name'],
    image: json['image'],
    isProvider: json['isProvider'],
  );
}

class ProductModel {
  String? name;
  int? price;
  ProductModel({this.name, this.price});
  factory ProductModel.fromJson(json) =>
      ProductModel(name: json['name'], price: json['price']);
}
