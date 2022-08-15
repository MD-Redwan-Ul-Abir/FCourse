
class ProductModel {
  ProductModel({
    this.id=0,
    this.categoryId=0,
    this.active=false,
    this.sku='',
    this.name='',
    this.upc='',
    this.description='',
    this.type='',
    this.sellingPrice=0.0,
  });

  int id;
  int categoryId;
  bool active;
  String sku;
  String name;
  String upc;
  String description;
  String type;
  double sellingPrice;



  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"] == null ? null : json["id"],
    categoryId: json["category_id"] == null ? null : json["category_id"],
    active: json["active"] == null ? null : json["active"],
    sku: json["sku"] == null ? null : json["sku"],
    name: json["name"] == null ? null : json["name"],
    upc: json["upc"] == null ? null : json["upc"],
    description: json["description"] == null ? null : json["description"],
    type: json["type"] == null ? null : json["type"],
    sellingPrice: json["selling_price"] == null ? null : json["selling_price"].toDouble(),
  );
}
