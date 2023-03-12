class imageModel{
  String id;
  String img;
  String? title;
  imageModel(this.id, this.img, {this.title});
}

final List<imageModel> imageinfo = [
  imageModel(DateTime.now().toString(), 'assets/images/BakeryImg.jpg',title: "30% off on bakery"),
  imageModel(DateTime.now().toString(), 'assets/images/fruitimg.jpg',title: "30% discount on Fruits"),
];

final List<imageModel> CategoriesImages = [
  imageModel(DateTime.now().toString(), 'assets/images/ChickenImg.jpg', title: "Chicken"),
  imageModel(DateTime.now().toString(), 'assets/images/ChocolateImg.jpg', title: "Chocolate"),
  imageModel(DateTime.now().toString(), 'assets/images/DailyProductImg.jpg', title: "Daily Products"),
  imageModel(DateTime.now().toString(), 'assets/images/DrinksImg.jpg', title: "Drinks"),
  imageModel(DateTime.now().toString(), 'assets/images/FishImg.jpg', title: "Fish"),
  imageModel(DateTime.now().toString(), 'assets/images/FruitCircularImg.jpg', title: "Fruits"),
  imageModel(DateTime.now().toString(), 'assets/images/IcecreamImg.jpg', title: "Ice Creams"),
  imageModel(DateTime.now().toString(), 'assets/images/JamsImg.jpg', title: "Jams"),
  imageModel(DateTime.now().toString(), 'assets/images/MeatImg.jpg', title: "Meat"),
  imageModel(DateTime.now().toString(), 'assets/images/SweetsImg.jpg', title: "Sweets"),
  imageModel(DateTime.now().toString(), 'assets/images/VegetablesImg.jpg', title: "Vegetables"),
];

final List<imageModel> CircularImages = [
  imageModel(DateTime.now().toString(), 'assets/images/FruitCircularImg.jpg', title: "Fruits"),
  imageModel(DateTime.now().toString(), 'assets/images/VegetablesImg.jpg', title: "Vegetables"),
  imageModel(DateTime.now().toString(), 'assets/images/FishImg.jpg', title: "Fish"),
  imageModel(DateTime.now().toString(), 'assets/images/DrinksImg.jpg', title: "Drinks"),
  imageModel(DateTime.now().toString(), 'assets/images/DailyProductImg.jpg', title: "Daily Products"),
  imageModel(DateTime.now().toString(), 'assets/images/ChocolateImg.jpg', title: "Chocolate")
];