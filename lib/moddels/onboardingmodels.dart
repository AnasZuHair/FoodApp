class OnBoardingModels {
  final String imageAssets;
  final String title;
  final String description;

  const OnBoardingModels({
    required this.imageAssets,
    required this.title,
    required this.description,
  });
}

List<OnBoardingModels> onboarding = <OnBoardingModels>[
  const OnBoardingModels(
    imageAssets: 'assets/images/ill1.png',
    title: 'Nearby restaurants',
    description: '''You don't have to go far to find a good restaurant,
we have provided all the restaurants that is 
near you''',
  ),
  const OnBoardingModels(
    imageAssets: 'assets/images/ill2.png',
    title: 'Select the Favorites Menu',
    description: '''Now eat well, don't leave the house,You can 
choose your favorite food only with 
one click''',
  ),
  const OnBoardingModels(
    imageAssets: 'assets/images/ill3.png',
    title: 'Good food at a cheap price',
    description: '''You can eat at expensive restaurants with
affordable price''',
  ),
];
