class Fruit{
  final String f_id;
  final String fruit;
  final String about;
  final String pic;
  final String vitamin;

  Fruit({this.f_id, this.fruit, this.about, this.pic, this.vitamin});

  factory Fruit.fromJSON(Map<String, dynamic> json){
    return Fruit(
        f_id: json['f_id'],
        fruit: json['fruit'],
        about: json['about'],
        pic: json['pic'],
        vitamin: json['vitamin']
    );
  }
}