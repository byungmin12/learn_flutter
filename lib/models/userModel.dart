class UserModel {
  final int id, age;
  final String firstName, image, gender;

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        firstName = json["firstName"],
        age = json["age"],
        image = json["image"],
        gender = json["gender"];
}
