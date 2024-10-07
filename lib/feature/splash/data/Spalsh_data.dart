class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}


final List<OnBoard> demoData=[
  OnBoard(image: 'images/splash2.png',
      title: 'Your favorite place to work',
      description: 'In Shaghaf Co-working space ,we provide a place that makes you more productive, enjoyable and comfortable A place made up of different parts'),
  OnBoard(image: 'images/splash3.png',
      title: 'Delightful open air',
      description: 'You can choose a game to play from the many games we have , sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures.'),
  OnBoard(image: 'images/splash4.png',
      title: 'Choose your favorite room',
      description: 'You can find the right room for your current mood, as we have many rooms that meet all needs, You can move between funny room, training room and meeting room'),


];