class Wheather{
  double temperature_c;
  double temperature_f;
  String condition;
  Wheather({
    this.temperature_c=0,
    this.temperature_f=0,
    this.condition='Sunny',
});
  factory Wheather.fromJson(Map<String,dynamic>json){
    return Wheather(
      temperature_c: json['current']['temp_c'],
      temperature_f: json['current']['temp_f'],
      condition: json['current']['condition']['text'],
    );
  }
}