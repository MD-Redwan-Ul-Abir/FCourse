class ProductModel {
  ProductModel({
    this.id = 0,
    this.categoryId = 0,
    this.active = false,
    this.deleted = false,
    this.dateUpdated,
    this.sku = '',
    this.name = '',
    this.upc = '',
    this.useLotNumber = false,
    this.useSerialNumber = false,
    this.useManufacturingSerialNumber = false,
    this.useSerialForReceive = false,
    this.description = '',
    this.type = '',
    this.hasVariants = false,
    this.assemblyId = 0,
    this.kitId = 0,
    this.sellingPrice = 0.0,
    this.suggestedRetailPrice = 0.0,
    this.cost = 0,
    this.unitId = 0,
    this.unitName,
    this.weight = 0,
    this.taxable = false,
    this.dropShip = false,
    this.customField1 = '',
    this.customField2 = '',
    this.customField3 = '',
    this.customField4 = '',
    this.customField5 = '',
    this.customField6 = '',
    this.height = 0,
    this.width = 0,
    this.length = 0,
    this.dimension = 0,
    this.imageUrl = '',
    this.enableSerializedImageUpload = false,
    this.productMandatoryCost = 0,
    this.tags,
    this.vendorId = 0,
    this.vendorName = '',
    this.totalQuantity = 0,
    this.availableQuantity = 0,
    this.isParent = false,
    this.variantId,
    this.lotSerialEnabled = false,
  });

  int id;
  int categoryId;
  bool active;
  bool deleted;
  DateTime? dateUpdated;
  String sku;
  String name;
  String upc;
  bool useLotNumber;
  bool useSerialNumber;
  bool useManufacturingSerialNumber;
  bool useSerialForReceive;
  String description;
  String type;
  bool hasVariants;
  int assemblyId;
  int kitId;
  double sellingPrice;
  double suggestedRetailPrice;
  double cost;
  int unitId;
  dynamic unitName;
  double weight;
  bool taxable;
  bool dropShip;
  String customField1;
  String customField2;
  String customField3;
  String customField4;
  String customField5;
  String customField6;
  double height;
  double width;
  double length;
  double dimension;
  String imageUrl;
  bool enableSerializedImageUpload;
  double productMandatoryCost;
  dynamic tags;
  int vendorId;
  String vendorName;
  double totalQuantity;
  double availableQuantity;
  bool isParent;
  dynamic variantId;
  bool lotSerialEnabled;

  ProductModel copyWith({
    int? id,
    int? categoryId,
    bool? active,
    bool? deleted,
    DateTime? dateUpdated,
    String? sku,
    String? name,
    String? upc,
    bool? useLotNumber,
    bool? useSerialNumber,
    bool? useManufacturingSerialNumber,
    bool? useSerialForReceive,
    String? description,
    String? type,
    bool? hasVariants,
    int? assemblyId,
    int? kitId,
    double? sellingPrice,
    double? suggestedRetailPrice,
    double? cost,
    int? unitId,
    dynamic unitName,
    double? weight,
    bool? taxable,
    bool? dropShip,
    String? customField1,
    String? customField2,
    String? customField3,
    String? customField4,
    String? customField5,
    String? customField6,
    double? height,
    double? width,
    double? length,
    double? dimension,
    String? imageUrl,
    bool? enableSerializedImageUpload,
    double? productMandatoryCost,
    dynamic tags,
    int? vendorId,
    String? vendorName,
    double? totalQuantity,
    double? availableQuantity,
    bool? isParent,
    dynamic variantId,
    bool? lotSerialEnabled,
  }) =>
      ProductModel(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        active: active ?? this.active,
        deleted: deleted ?? this.deleted,
        dateUpdated: dateUpdated ?? this.dateUpdated,
        sku: sku ?? this.sku,
        name: name ?? this.name,
        upc: upc ?? this.upc,
        useLotNumber: useLotNumber ?? this.useLotNumber,
        useSerialNumber: useSerialNumber ?? this.useSerialNumber,
        useManufacturingSerialNumber:
            useManufacturingSerialNumber ?? this.useManufacturingSerialNumber,
        useSerialForReceive: useSerialForReceive ?? this.useSerialForReceive,
        description: description ?? this.description,
        type: type ?? this.type,
        hasVariants: hasVariants ?? this.hasVariants,
        assemblyId: assemblyId ?? this.assemblyId,
        kitId: kitId ?? this.kitId,
        sellingPrice: sellingPrice ?? this.sellingPrice,
        suggestedRetailPrice: suggestedRetailPrice ?? this.suggestedRetailPrice,
        cost: cost ?? this.cost,
        unitId: unitId ?? this.unitId,
        unitName: unitName ?? this.unitName,
        weight: weight ?? this.weight,
        taxable: taxable ?? this.taxable,
        dropShip: dropShip ?? this.dropShip,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        customField3: customField3 ?? this.customField3,
        customField4: customField4 ?? this.customField4,
        customField5: customField5 ?? this.customField5,
        customField6: customField6 ?? this.customField6,
        height: height ?? this.height,
        width: width ?? this.width,
        length: length ?? this.length,
        dimension: dimension ?? this.dimension,
        imageUrl: imageUrl ?? this.imageUrl,
        enableSerializedImageUpload:
            enableSerializedImageUpload ?? this.enableSerializedImageUpload,
        productMandatoryCost: productMandatoryCost ?? this.productMandatoryCost,
        tags: tags ?? this.tags,
        vendorId: vendorId ?? this.vendorId,
        vendorName: vendorName ?? this.vendorName,
        totalQuantity: totalQuantity ?? this.totalQuantity,
        availableQuantity: availableQuantity ?? this.availableQuantity,
        isParent: isParent ?? this.isParent,
        variantId: variantId ?? this.variantId,
        lotSerialEnabled: lotSerialEnabled ?? this.lotSerialEnabled,
      );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"] ?? 0,
        categoryId: json["category_id"] ?? 0,
        active: json["active"] ?? false,
        deleted: json["deleted"] ?? false,
        dateUpdated: json["date_updated"] == null
            ? DateTime.now()
            : DateTime.parse(json["date_updated"]),
        sku: json["sku"] ?? "",
        name: json["name"] ?? '',
        upc: json["upc"] ?? "",
        useLotNumber: json["use_lot_number"] ?? "",
        useSerialNumber: json["use_serial_number"] ?? false,
        useManufacturingSerialNumber:
            json["use_manufacturing_serial_number"] ?? false,
        useSerialForReceive: json["use_serial_for_receive"] ?? false,
        description: json["description"] ?? '',
        type: json["type"] ?? '',
        hasVariants: json["has_variants"] ?? false,
        assemblyId: json["assembly_id"] ?? 0,
        kitId: json["kit_id"] ?? 0,
        sellingPrice: json["selling_price"] == null
            ? 0.0
            : json["selling_price"].toDouble(),
        suggestedRetailPrice: json["suggested_retail_price"] == null
            ? 0.0
            : json["suggested_retail_price"].toDouble(),
        cost: json["cost"] ?? 0,
        unitId: json["unit_id"] ?? 0,
        unitName: json["unit_name"],
        weight: json["weight"] ?? 0,
        taxable: json["taxable"] ?? false,
        dropShip: json["drop_ship"] ?? false,
        customField1: json["custom_field1"] ?? '',
        customField2: json["custom_field2"] ?? "",
        customField3: json["custom_field3"] ?? '',
        customField4: json["custom_field4"] ?? '',
        customField5: json["custom_field5"] ?? '',
        customField6: json["custom_field6"] ?? '',
        height: json["height"] ?? 0,
        width: json["width"] ?? 0,
        length: json["length"] ?? 0,
        dimension: json["dimension"] ?? 0,
        imageUrl: json["image_url"] ?? "",
        enableSerializedImageUpload:
            json["enable_serialized_image_upload"] ?? false,
        productMandatoryCost: json["product_mandatory_cost"] ?? 0,
        tags: json["tags"],
        vendorId: json["vendor_id"] ?? 0,
        vendorName: json["vendor_name"] ?? "",
        totalQuantity: json["total_quantity"] ?? 0,
        availableQuantity: json["available_quantity"] ?? 0,
        isParent: json["is_parent"] ?? 0,
        variantId: json["variant_id"],
        lotSerialEnabled: json["lot_serial_enabled"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? null,
        "category_id": categoryId ?? null,
        "active": active ?? null,
        "deleted": deleted ?? null,
        "date_updated":
            dateUpdated == null ? null : dateUpdated!.toIso8601String(),
        "sku": sku ?? null,
        "name": name ?? null,
        "upc": upc ?? null,
        "use_lot_number": useLotNumber ?? null,
        "use_serial_number": useSerialNumber ?? null,
        "use_manufacturing_serial_number": useManufacturingSerialNumber ?? null,
        "use_serial_for_receive": useSerialForReceive ?? null,
        "description": description ?? null,
        "type": type ?? null,
        "has_variants": hasVariants ?? null,
        "assembly_id": assemblyId ?? null,
        "kit_id": kitId ?? null,
        "selling_price": sellingPrice ?? null,
        "suggested_retail_price": suggestedRetailPrice ?? null,
        "cost": cost ?? null,
        "unit_id": unitId ?? null,
        "unit_name": unitName,
        "weight": weight ?? null,
        "taxable": taxable ?? null,
        "drop_ship": dropShip ?? null,
        "custom_field1": customField1 ?? null,
        "custom_field2": customField2 ?? null,
        "custom_field3": customField3 ?? null,
        "custom_field4": customField4 ?? null,
        "custom_field5": customField5 ?? null,
        "custom_field6": customField6 ?? null,
        "height": height ?? null,
        "width": width ?? null,
        "length": length ?? null,
        "dimension": dimension ?? null,
        "image_url": imageUrl ?? null,
        "enable_serialized_image_upload": enableSerializedImageUpload ?? null,
        "product_mandatory_cost": productMandatoryCost ?? null,
        "tags": tags,
        "vendor_id": vendorId ?? null,
        "vendor_name": vendorName ?? null,
        "total_quantity": totalQuantity ?? null,
        "available_quantity": availableQuantity ?? null,
        "is_parent": isParent ?? null,
        "variant_id": variantId,
        "lot_serial_enabled": lotSerialEnabled ?? null,
      };
}
