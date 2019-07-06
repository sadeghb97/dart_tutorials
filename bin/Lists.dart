main(List<String> arguments) {
  //mesal haye avalie dar main mojud ast

  //in modeli list tarif beshe size va type dynamic mishe
  List names = ["Sadegh", "Hamid"];
  names.add("Mehdi");
  names.add(14);
  names.shuffle();
  print(names);

  //inja ham size va type dynamic hast
  List details = new List();
  details.add("Hamid");
  details.add(14);
  print(details);

  //ham size (10) va ham type(int) sabet ast
  //chun size sabet ast az method haye add va insert nemitavan estefade kard
  List specList = new List<int>(5);
  specList[0] = 14;
  specList[3] = 24;
  //khate paein error migirad
  //specList.add("ffff");
  print(specList);
  
  //peymayeshe list ha
  int i = 0;
  names.forEach((item) {print("Item${++i}: $item");});

  List strs = new List<String>();
  strs.add("FSTR");
  strs.add("SecondSTR");
  strs.add("Third");

  //map kardan ya negashte yek araye be yek araye digar
  //lambdaye darune code kholase commente paein ast - semi colon ham nadare
  //(item){return item.length;}
  var namesLength = strs.map((item) => item.length).toList();
  print(namesLength);
  print(strs);

  List values = [14, 16, 2, 8, 23, 19, 32, 64, 50, 26, 44];
  print(values.take(5).toList());
  print(values.skip(3).take(4).toList());
  values.sort();
  print(values);

  //bargardandane bazi az khane haye araye. true be ezaye har item yani bargardad
  List eights = values.where((item) => (item % 8) == 0).toList();
  print("eights: $eights");

  //fold baraye bedast avardane yek meghdar az ruye araye
  //dar mesale zir 1000 meghdar avalie ast va tamame khane haye araye ba
  //in meghdar jam mishavad va dar nahayat natije bargasht dade mishavad
  var foldResult = eights.fold(1000, (res, item) => res + item);
  print("foldResult: $foldResult");

  //reduce ham shabihe fold ast
  /*reduce can only be used on non-empty collections with functions
  that returns the same type as the types contained in the collection.*/
  var reduceResult = eights.reduce((res, item) => res * item);
  print("reduceResult: $reduceResult");

  //By the way list.reduce(f) can be seen as a shortcut for list.skip(1).fold(list.first, f)
}