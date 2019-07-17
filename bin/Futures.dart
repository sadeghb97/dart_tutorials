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
  for(int i=0; 80000>i; i++) myList.add(random.nextInt(2000));
  return myList;
}

main(List<String> arguments) {
  //first example
  //raveshe avval
  //asyncAproach();

  //raveshe dovom
  //syncAproach();

  //second example
  final myList = getRandomList();

  //raveshe avval
  //sortMyArray(myList, startCallback, endCallback);

  //raveshe dovom
  futureSortMyArray(myList, startCallback).then(endCallback);

  for(int i=0; 50>i; i++) print("Dummy Data $i");
}

asyncAproach() async {
  try {
    final result = await http.get(WRONG_URL);
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
  http.get(WRONG_URL).then((value){
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