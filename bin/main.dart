import 'dart:ffi';
import 'package:FirstDart/FirstDart.dart' as FirstDart;

main(List<String> arguments) {
  print('Hello world: ${FirstDart.calculate()}!');
  print("This is me!");

  var number = 14;
  print("Number: $number");
  //this is wrong
  //number = "Hello";

  var myArray = ["Sadegh", 14, 29];
  myArray.add(20);
  print(myArray);
  print("Array: ${myArray[0]} - ${myArray[1]} - ${myArray[2]}");

  //tarife type be surate sarih
  double height = 100;
  print("Height: $height");
  height = 120.7;
  print("Height: $height");

  //Famous Types
  bool flag = true;
  String str = "Reza";
  int myInt = 6;
  double myDouble = 18;

  //Dart represents arrays in the form of List objects.
  //Tarife List:
  var myDoubleList = new List<double>();
  var myDoubleList2 = [];

  //inja add va insert OK hast chun size list dynamic hast
  myDoubleList.add(14.6);
  myDoubleList.add(24.9);
  myDoubleList2.add(10);
  myDoubleList2.add(14.999);
  print("mdl: $myDoubleList");
  print("mdl2: $myDoubleList2");

  var myDynamicList = new List(8);
  //inja add va insert eshtebahe. chun noe list ya arraye az noe fixed size hast
  //wrongDynamicList.add("sadegh");

  myDynamicList[4] = "Sadegh";
  print("Khune4: ${myDynamicList[4]}");
  print("mDynamicList: $myDynamicList");
  print("Size: ${myDynamicList.length}");

  //Dynamic Type. az keyworde var nabayad estefade shavad
  dynamic myVar = "Kazem";
  print("myVar: $myVar");
  myVar = 169.98;
  print("myVar: $myVar");

  //in moteghayyer ham dynamic mishavad. har chand az keyworde var estefdae shode na dynamic
  var sVar = myVar;
  print("sVar: $sVar");
  sVar = "This is A dynamic var too";
  print("sVar: $sVar");

  //Const and Final vars
  //vaghti az in do keyword dar tarif estefade mikonim nabayad az keyworde var
  //ham estefade konim
  //har do zamane tarif bayad meghdardehi shavand
  final int finalIntVar = 14;
  final finalSecondVar = flag;
  print("finalSecondVar: $finalSecondVar");

  const constVar = 14;
  //const bayad zamane compile meghdardehi shavad pas khate paein error migirad
  //const secondConstVar = flag;

  //List be halata key value -> Map Structure
  var firstMap = {'yek': 1, 2: "Two"};
  print("firstMap: $firstMap");

  var secondMap = new Map<String, int>();
  secondMap["Yek"] = 1;
  secondMap["do"] = 2;
  print("secondMap: $firstMap");
}
