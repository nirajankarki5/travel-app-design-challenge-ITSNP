class Popular {
  String image;
  String placeName;
  String description;
  double rating;

  Popular(
      {required this.description,
      required this.image,
      required this.placeName,
      required this.rating});
}

List<Popular> popularList = [
  Popular(
    description:
        "Pokhara is a metropolitan city in the Western region of Nepal.",
    image: "assets/images/pokhara.png",
    placeName: "Pokhara",
    rating: 4.8,
  ),
  Popular(
    description:
        "Dharan is a famous tourist and pilgrimage center in Nepal's eastern region.",
    image: "assets/images/vedetar.jpg",
    placeName: "Dharan",
    rating: 4.6,
  ),
  Popular(
    description:
        "The meaning of Chitwan is Heart of the Jungle. Chitwan was a dense forest.",
    image: "assets/images/elephant.jpg",
    placeName: "Chitwan",
    rating: 4.9,
  )
];
