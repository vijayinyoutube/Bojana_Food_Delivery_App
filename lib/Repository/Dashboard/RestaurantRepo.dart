class Restaurant {
  final String restaurantName;
  final String deliveryTime;
  final bool isFavourite;
  final String imagePath;
  final String startsAt;
  final List<int> tags;
  final bool isAssured;
  final String ratings;
  final String offers;
  final String items;

  Restaurant({
    this.restaurantName,
    this.deliveryTime,
    this.isFavourite,
    this.imagePath,
    this.isAssured,
    this.startsAt,
    this.ratings,
    this.offers,
    this.items,
    this.tags,
  });
}

List<Restaurant> restaurantDetails = [
  Restaurant(
    imagePath: "assets/Images/Dashboard/9.jpg",
    items: "Ice Cream, Juices, Pizza",
    restaurantName: "Oyalo Pizza",
    isFavourite: false,
    tags: [1, 1, 0, 0],
    deliveryTime: "30",
    isAssured: true,
    startsAt: "150",
    ratings: "4.1",
    offers: "100",
  ),
  Restaurant(
    imagePath: "assets/Images/Dashboard/10.jpg",
    items: "Fresh Juices, Fruits",
    restaurantName: "Juicy World",
    isFavourite: false,
    tags: [0, 1, 1, 0],
    deliveryTime: "32",
    isAssured: false,
    startsAt: "100",
    ratings: "4.3",
    offers: "75",
  ),
  Restaurant(
    imagePath: "assets/Images/Dashboard/11.jpg",
    items: "Briyani, Parotta, Fried Rice",
    restaurantName: "Briyani Mess",
    tags: [1, 0, 0, 1],
    deliveryTime: "25",
    isFavourite: true,
    isAssured: true,
    startsAt: "120",
    ratings: "4.5",
    offers: "50",
  ),
];
