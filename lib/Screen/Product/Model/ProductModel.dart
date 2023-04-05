class productModel {
  int? id;
  String? title, description, category, image;
  double? price;

  productModel({
    this.id,
    this.title,
    this.description,
    this.category,
    this.image,
    this.price,
  });

  productModel productFromJson(Map m1) {
    title = m1['title'];
    description = m1['description'];
    id = m1['id'];
    image = m1['image'];
    category = m1['category'];
    price = m1['price'];

    productModel p1 = productModel(
      title: title,
      id: id,
      image: image,
      category: category,
      description: description,
      price: price,
    );

    return p1;
  }
}

class ratingModel {
  double? rate;
  int? count;

  ratingModel({
    this.rate,
    this.count,
  });

  ratingModel ratingFromJson(Map m1) {
    rate = m1['rate'];
    count = m1['count'];

    ratingModel r1 = ratingModel(
      count: count,
      rate: rate,
    );

    return r1;
  }
}
