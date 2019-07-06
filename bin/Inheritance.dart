
main(List<String> arguments) {
  Person p = new Person("Hamid", "hamid@yahoo.com");
  p.echo();

  AdultPerson ap = new AdultPerson("Majid", "majid@gmail.com", 2200000);
  ap.echo();

  //nemitavan az car shey sakht
  //Car car = new Car("Yello");

  Pride pride = new Pride();
  pride.drive();
}

class Person{
  String name;
  String email;

  Person(this.name, this.email);

  echo(){
    print("----------------");
    print("Name: $name");
    print("Email: $email");
  }
}

class AdultPerson extends Person{
  int income;

  AdultPerson(String name, String email, this.income) : super(name, email);

  @override
  echo() {
    super.echo();
    print("Income: $income");
  }
}

abstract class Car {
  String color;

  Car(this.color);

  //code paein dar surati ke az keyworde abstract estefade nakonim error midahad
  drive();
}

class Pride extends Car{
  //in class bayad hatman az constuctore pedar ersbari konad
  //ya agar nakhahim aslan constructor dar in class tarif konim
  //bayad clase pedar constructore bedune argument dashte bashad
  //ya clase pedar ham aslan constructor nadashte bashad
  Pride() : super("White");

  @override
  drive() {
    print("----------------");
    print("drive slow!");
  }
}