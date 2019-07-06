main(List<String> arguments) {
  //karbord haye an dar main va lists dar zamane tarife list va map amade ast

  //injuri ham mishe hatta. size moteghayyer vali type sabet ast.
  List names = <String>[];
  names.add("Mamad");
  names.add("ali");
  print(names);

  MySpecialList msl = new MySpecialList();
  msl.addItem("HamidVich");
  msl.addItem("RezaIch");
  msl.addItem(36);
  print(msl.myList);

  MySpecialList secondsl = new MySpecialList<int>();
  secondsl.addItem(14);
  secondsl.addItem(26);
  //khate paein error migirad
  //secondsl.addItem("Hamid");
  print(secondsl.myList);
}

class MySpecialList<T>{
  //haminja mitavan list ra new kard
  //pas niazi nist sazande besazim va anja in kar ra konim
  List<T> myList = new List<T>();

  /*MySpecialList(){
    myList = new List<T>();
  }*/

  addItem(T value) => myList.add(value);
}