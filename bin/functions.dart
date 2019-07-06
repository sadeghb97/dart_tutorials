main(List<String> arguments) {
  //mostaghiman nemitavan yek tabe ya lambda ra darune moteghayyer ha rikht
  //bayad ebteda tabe tarif shavad sepas darune yek moteghayyer rikhte shavad

  int plusOne(int a){return a + 1;}
  var funcVar = plusOne;
  int plusTwo(int a) => a + 2;
  var lambVar = plusTwo;


  print("Hello Functions");
  firstFunc(14);
  print("secondFunc: ${secondFunc(100)}");
  print("defFunc: ${defFunc(10)}");
  print("defFunc: ${defFunc(10, c:100)}");
  print("lambf: ${lambf(10, 100)}");
  seclamb(10, 100);
  print("tavanLamb: ${tavanLamb(10)}");

  advFunc(secondFunc, defFunc);
  advFunc(secondFunc, tavanLamb);
  advFunc(funcVar, lambVar);
}

//dar tarife tavabe az keyworde var estefade nemishavad
//agar bekhahim mitavanim type ra moshakhas konim
//agar type vorudi ya khoruji ha ra moshakhas nakonim dynamic khahand shod
firstFunc(a){
  print("a: $a");
  a = "Hamid";
  print("a: $a");
}

int secondFunc(int a){
  return a * 24;
}

//meghdare defalte baraye vorudi ha
//meghdare defalt ra ham ba : va ham ba = mitavan dad - darune {}
//vali agar bekhahim parametr ha ra ba nam be tabe befrestim faghat bayad
//az : estefade kard
defFunc(int a, {int b:5, int c:8}){
  return a + 3 * b + 5 * c;
}

//lambda function ha - mesle functione mamuli - ehtemalan faghat yek khati
int lambf(int a, int b) => a + b;
seclamb(int a, int b) => {
  print("a: ${a * b}")
};
int tavanLamb(int a) => a * a;

//vorudie func - ham mitavan function va ham ebarate lambda pass dad
advFunc(Function func, Function func2){
  var f1 = func(100);
  var f2 = func2(10);
  print("advFunc: ${f1 + f2}");
}