// class HomeModel{
//
//   bool?status;
// HomeDataModel?data;
//
//   HomeModel({this.status, this.data});
//
//   factory HomeModel.fromJson(Map<String, dynamic> json) {
//     return HomeModel(
//       status: json["status"].toLowerCase() == 'true',
//       data: HomeDataModel.fromJson(json["data"]),
//     );
//   }
// //
//
// }
// class HomeDataModel{
// List<BannerModel>?banners;
// List<ProductsModel>?products;
//
// HomeDataModel.fromJson(Map<String,dynamic>json){
//   json['banners'].foreach((element){
//     banners?.add(element);
//   });
//
//   json['products'].foreach((element){
//     products?.add(element);
//   });
//
//
// }
//
//
//
// }
// class BannerModel{
//   int?id;
//   String?image;
//
//   BannerModel({this.id, this.image});
//   BannerModel.fromJson(Map<String,dynamic>json){
//     id=json['id'];
//     image=json['image'];
//   }
// }
// class ProductsModel{
// int?id;
// dynamic?price;
// dynamic?oldprice;
// dynamic?discount;
// String?image;
// String?name;
// bool ?infavourite;
//
//
// ProductsModel({this.id, this.price, this.oldprice, this.discount});
// ProductsModel.fromJson(Map<String,dynamic>json){
//   id=json['id'];
//   price=json['price'];
//  oldprice=json['oldprice'];
//   discount=json['discount'];
//
// }
// }
class User{
  String?gender;
  String?email;
  String?phone;
  String?cell;
  String?nat;

  User({this.gender, this.email, this.phone, this.nat});
}