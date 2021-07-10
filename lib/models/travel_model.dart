class TravelModel {
  final String  title;
  final String image;
  final String shortDetail;
  final String description;

  TravelModel({required this.title, required this.image, required this.shortDetail, required this.description});

  factory TravelModel.fromJson(Map<String, dynamic> json) => TravelModel(
      title: json['title'],
      image: json['image'],
      shortDetail: json['short-detail'],
      description: json['description']
  );
}

List<TravelModel> listOfAttractions = [
  TravelModel(
      title: "Eiffel Tower",
      image: "https://i.imgur.com/mJwhPRy.jpeg",
      shortDetail: "The Eiffel Tower, La Tour Eiffel in French, was the main exhibit of the Paris Exposition",
      description: "Built in 1889 for the Exposition Universelle, the Eiffel Tower (Tour Eiffel) has become the main symbol of Paris. It is also the most-visted attraction in the world."),

  TravelModel(
      title: "Mount Fuji",
      image: "https://i.imgur.com/Z23ulVO.jpeg",
      shortDetail: "Mount Fuji, Japanese Fuji-san, also spelled Fujisan, also called Fujiyama or Fuji no Yama, highest mountain in Japan.",
      description: "Mount Fuji is a composite cone, or stratovolcano. Composite cones, formed by violent eruptions, have layers of rock, ash, and lava. Mount Fuji is a symbol of Japan. The mountain contributes to Japan's physical, cultural, and spiritual geography"),

  TravelModel(
      title: "Sigiriya Rock Fortress",
      image: "https://i.imgur.com/2uOFcvV.jpeg",
      shortDetail: "Sigiriya is one of the most valuable historical monuments of Sri Lanka. Referred by locals as the Eighth Wonder of the World",
      description: "Sigiriya is an ancient rock fortress and palace built by King Kashyapa during the reign of 473 – 495 which is standing majestically 660 feet straight up. It is located in the northern Matale district near the town of Dambulla in central province of Sri Lanka.")

];