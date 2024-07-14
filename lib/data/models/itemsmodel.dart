class ItemsModel {
  int? itemId;
  int? catId;
  String? name;
  String? image;
  double? price;
  bool? haveattachments;

  ItemsModel({this.itemId, this.catId, this.name, this.image, this.price,this.haveattachments});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    catId = json['catId'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    haveattachments = json['haveattachments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['itemId'] = itemId;
    data['catId'] = catId;
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    data['haveattachments'] = haveattachments;
    return data;
  }
}
