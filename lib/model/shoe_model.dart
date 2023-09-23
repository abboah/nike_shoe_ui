class Model {
  String name;
  String price;
  String image;

  Model({
    required this.name,
    required this.price,
    required this.image,
  });
  static List<Model> nike = [];
  static void initialisenike() {
    nike = [
      Model(
          name: 'Air Max 97',
          price: "\$20.99",
          image: 'assets/images/Yellow Shoe.png'),
      Model(
          name: 'React Presto',
          price: "\$25.99",
          image: 'assets/images/15947562_30161559_1000-removebg-preview 1.png'),
      Model(
          name: 'Air Max 97',
          price: "\$20.99",
          image: 'assets/images/toppng.png'),
      Model(
          name: 'KD 13EP', price: "\$25.99", image: 'assets/images/Shoe 1.png')
    ];
  }
}
