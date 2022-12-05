class CharactersModel {
  int? charId;
  String? name;
  String? birthday;
  String? nickName;
  String? image;
  List<dynamic>? occupation;
  List<dynamic>? appearance;
  List<dynamic>? betterCallSaulAppearance;
  String? status;
  String? portrayed;
  String? category;

  CharactersModel(
      this.charId,
      this.name,
      this.birthday,
      this.nickName,
      this.image,
      this.occupation,
      this.appearance,
      this.betterCallSaulAppearance,
      this.status,
      this.portrayed,
      this.category);

  CharactersModel.fromJson(Map<String,dynamic> json){
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'];
    image = json['img'];
    status = json['status'];
    nickName = json['nickname'];
    appearance = json['appearance'];
    portrayed = json['portrayed'];
    category = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }
}
