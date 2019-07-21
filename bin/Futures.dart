import 'dart:async';
import 'dart:math';
import 'package:http/http.dart' as http;

final String SERVER_URL = "https://reqres.in/api/products/3";
final String WRONG_URL = "https://123456.789/";
var sortingStartTime;

Function startCallback = (){
  print("Start ------------");
  sortingStartTime = new DateTime.now().millisecondsSinceEpoch;
};

Function endCallback = (List<int> sortedList){
  var sortingDuration = new DateTime.now().millisecondsSinceEpoch - sortingStartTime;
  print("End!!!!!!!!!!!!!!!");
  print("Max Member: ${sortedList[0]}");
  print("Sorting Duration: $sortingDuration");
};

getRandomList(){
  Random random = new Random();
  final myList = List<int>();
  for(int i=0; 160000>i; i++) myList.add(random.nextInt(2000));
  return myList;
}

main(List<String> arguments) {
  //functioni ke barchasbe async khorde mitavanad az keyworde await estefade konad
  //har zaman dar chenin functioni dar yek khat await biayad cpu be
  //ghesmat haye digare barname dade mishavad va dar yek zamani ke mohasebe an dastur
  //be payan reside edame an ejra khahad shod
  //masalan farz konid funcione 'af' yek funcione async hast va dar yek khate an
  //az keyworde await estefade shode
  //hala khate avale yek code: af()
  //khate dovom: bf()
  //dar in sharayet ebteda 'af' ejra mishavad va vaghti be await beresim
  //'bf' ejra khahad shod. sepas zamani funcione 'af' edame miyabad ke dasturi ke
  //await darad be payan reside bashad
  //deghat konid funcione async nesbat be baghie funcion ha oleviate kam tari darad
  //amalan vaghti funcioni ra async mikonim va darune an az await estefade mikonim
  //yani be cpu migim aval baghiye karharo bokon har vaght saret khalvat shod
  //injaro edame bede. yani dasturi ke await darad amalan zamani ke cpu mashghule
  //ejraye kare digari nist ejra mishavad. pas masalan agar 'bf' mohasebate ziadi dashte bashad
  //va async nabashad aval 'bf' har cheghadr ham zaman bar bashad ejra mishavad
  //va sepas ba bikar shodane cpu 'af' edame miyabad

  //dasturate zaman bar, dar ghalebe yek shey az clase generike future neveshte mishavand
  //va zamani ke ejrayeshan be payan beresad chizi ke dar generic moshakhas karde im
  //bargasht dade mishavad (mitavanad null bargasht dade shavad)

  //hala dar ravie aval ma mitavanim
  //ruye in ashiya set konim ke pas az payan ba tavajoh be natige chekari anjam shavad
  //ya agar error gereftim chekari anjam shavad va sarian dar hali ke natige hanuz amade nist
  //be khate bad beravim

  //ya inke in mavared ra set nakonim va ghabl az 'new Future' await bezarim
  //dar in surat ta zamani ke natige hasel nashode barname dar an block be khate bad nemiravad
  //ke in ravie dar ghalebe yek functione async ghabele ejrast

  //pas natige girie kolli ine ke dasturat zaman bar hame dar ghalebe future hastand
  //va tafavoti taghriban beyne in do ravashe estefade az anha vojud nadarad
  //ye juraei faghat syntax ha motefavetan va age har ravesh ham kamelan az zaban
  //hazf beshe raveshe dige ham be tanhaei kefayat mikone


  //****************************************
  //first example

  //------------------------
  //raveshe avval
  //asyncAproach();
  //sortMyArray(getRandomList(), startCallback, endCallback);

  //------------------------
  //raveshe dovom
  //syncAproach();
  //sortMyArray(getRandomList(), startCallback, endCallback);

  //****************************************
  //second example

  //final myList = getRandomList();

  //----
  //raveshe avval
  //sortMyArray(myList, startCallback, endCallback);

  //----
  //raveshe dovom
  //futureSortMyArray(myList, startCallback).then(endCallback);

  //for(int i=0; 50>i; i++) print("Dummy Data $i");
}

asyncAproach() async {
  print("async function started");
  try {
    final result = await http.get(SERVER_URL);
    print(result.statusCode);
    print(result.body);
  }
  catch (ex){
    print("An error occured!");
    print(ex.message);
  }

  print("asyncAproach 1");
  print("asyncAproach 2");
  print("asyncAproach 3");
}

syncAproach(){
  print("sync function started");
  http.get(SERVER_URL).then((value){
    print(value.statusCode);
    print(value.body);
  }).catchError((ex){
    print("An error occured!");
    print(ex.message);
  });

  print("syncAproach 1");
  print("syncAproach 2");
  print("syncAproach 3");
}

sortMyArray(List<int> myList, Function startCallback, Function endCallback){
  startCallback();
  for(int i=0; myList.length>i; i++){
    var maxIndex = i;
    for(int j=i+1; myList.length>j; j++){
      if(myList[j] > myList[maxIndex]) maxIndex = j;
    }

    if(maxIndex != i){
      final temp = myList[i];
      myList[i] = myList[maxIndex];
      myList[maxIndex] = temp;
    }
  }
  endCallback(myList);
}

Future<List<int>> futureSortMyArray(List<int> myList, Function startCallback){
  return new Future((){
    startCallback();
    for(int i=0; myList.length>i; i++){
      var maxIndex = i;
      for(int j=i+1; myList.length>j; j++){
        if(myList[j] > myList[maxIndex]) maxIndex = j;
      }

      if(maxIndex != i){
        final temp = myList[i];
        myList[i] = myList[maxIndex];
        myList[maxIndex] = temp;
      }
    }
    return myList;
  });
}