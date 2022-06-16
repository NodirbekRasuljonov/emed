class DoctorsModel{
  String name;
  String imgurl;
  DoctorsModel({required this.name,required this.imgurl});
}


class DoctorsData{
  static List<DoctorsModel> data=List.generate(10, (index) => DoctorsModel(name: 'Nodirbek Rasuljonov',imgurl: 'assets/images/profile.jpg'),);
}