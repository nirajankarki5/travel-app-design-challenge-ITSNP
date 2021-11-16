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
        "Pokhara is a metropolitan city in the Western region of Nepal. It is a valley cradled amongst mountains and hills.",
    image: "assets/images/mountain.webp.",
    placeName: "Pokhara",
    rating: 4.8,
  ),
  Popular(
    description:
        "Dharan is a famous tourist and pilgrimage center in Nepal's eastern region and is a gateway to several attractions.",
    image: "assets/images/vedetar.jpg",
    placeName: "Dharan",
    rating: 4.6,
  ),
  Popular(
    description:
        "The meaning of Chitwan is Heart of the Jungle. Chitwan was a dense forest ruled by the Tharu God-King Chitrasen Baba, an incarnation of Vishnu.",
    image: "assets/images/elephant.jpg",
    placeName: "Chitwan",
    rating: 4.9,
  )
];
