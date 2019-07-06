main(List<String> arguments) {
  //in operator int barmigardanand
  print(14 ~/ 3);

  //dar moghayese ba in
  print(14 / 3);

  //type motefavet ast pas barabar nistand
  print(14 == "14");

  //type test operators
  print("str" is String);
  print("str" is int);
  print("str" is! int);

  print("-------------");
  //cast operators
  var c = new Child();
  print(c is Base);
  print(c is Child);
  print(c is ChildTwo);

  //cast ba keyworde 'as' anjam mishavad

  print("-------------");
  //in amalgar agar samte chap nal bashad samte rasti ra barmigardanad
  //vagarna samte chapi ra barmigardanad
  var f = 14;
  print(f ??= 1000);
  f = null;
  print(f ??= 1000);
}

class Base{}
class Child extends Base{}
class ChildTwo extends Base{}