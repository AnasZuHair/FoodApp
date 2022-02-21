class Bookinglistmodel {
  final String image;
  final String title;
  final String subtitle;
  const Bookinglistmodel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<Bookinglistmodel> booking = [
  const Bookinglistmodel(
    image: 'assets/images/resraurants.png',
    title: 'Ambrosia Hotel & Restaurant',
    subtitle: 'kazi Deiry, Taiger\nPass Chittagong',
  ),
  const Bookinglistmodel(
    image: 'assets/images/resraurants2.png',
    title: 'Tava Restaurant',
    subtitle: 'Zakir Hossain Rd\nChittagong',
  ),
  const Bookinglistmodel(
    image: 'assets/images/resraurants.png',
    title: 'Haatkhola',
    subtitle: '6 Surson Road,\nChittagong',
  ),
];
