class Restaurant {
  final String restaurantName;
  final String items;
  final String ratings;
  final String offers;
  final String startsAt;
  final List<int> tags;
  final bool isFavourite;
  final String deliveryTime;
  final String imagePath;

  Restaurant({
    this.restaurantName,
    this.items,
    this.ratings,
    this.offers,
    this.startsAt,
    this.tags,
    this.isFavourite,
    this.deliveryTime,
    this.imagePath,
  });
}

List<Restaurant> myCall = [
  Restaurant(
    restaurantName: "Oyalo Pizza",
    items: "Ice Cream, Juices, Pizza",
    ratings: "4.1",
    offers: "100",
    startsAt: "150",
    tags: [1, 1, 1, 0, 0],
    isFavourite: false,
    deliveryTime: "30",
    imagePath: "assets/Images/Dashboard/9.png",
  ),
  Restaurant(
    restaurantName: "Juicy World",
    items: "Fresh Juices, Fruits",
    ratings: "4.3",
    offers: "75",
    startsAt: "100",
    tags: [0, 0, 1, 1, 0],
    isFavourite: false,
    deliveryTime: "32",
    imagePath: "assets/Images/Dashboard/10.png",
  ),
  Restaurant(
    restaurantName: "Briyani Mess",
    items: "Briyani, Parotta, Fried Rice",
    ratings: "4.5",
    offers: "50",
    startsAt: "120",
    tags: [1, 1, 0, 0, 1],
    isFavourite: true,
    deliveryTime: "25",
    imagePath: "assets/Images/Dashboard/11.png",
  ),
];
