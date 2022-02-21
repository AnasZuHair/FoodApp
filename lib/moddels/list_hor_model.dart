class ListHotModel {
  final String image;
  final String title;
  final String subTitle;
  const ListHotModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<ListHotModel> listHordata = [
  const ListHotModel(
      image: 'assets/images/arivable_1.png',
      title: 'Chicken Biryani',
      subTitle: 'Ambrosia Hotel &\nRestaurant'),
  const ListHotModel(
      image: 'assets/images/arivable_2.png',
      title: 'Sauce Tonkatsu',
      subTitle: 'Handi Restaurant,\nChittagong'),
  const ListHotModel(
      image: 'assets/images/arivable_3.png',
      title: 'Chicken Katsu',
      subTitle: 'Ambrosia Hotel &\nRestaurant')
];
