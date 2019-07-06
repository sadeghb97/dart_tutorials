main(List<String> arguments) {
  var user = new User("Sadegh", "s@y.com", 16);
  user.printDetails();
}

class User{
  String name;
  String email;
  int age;

  /*User(name, email, age){
    this.name = name;
    this.email = email;
    this.age = age;
  }*/

  //ham arze constructore bala
  User(this.name, this.email, this.age);

  printDetails(){
    print("Name: $name");
    print("Email: $email");
    print("Age: $age");
  }
}