class productItems {
  productItems(
    this.name,
    this.price,
    this.urlImage, {
    this.shoeColor,
    this.size,
    this.ourDescription,
  });

  final String name;
  final String price;
  final String urlImage;
  final String? size;
  final String? shoeColor;
  final String? ourDescription;
}
