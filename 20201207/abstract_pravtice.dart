void main(){
  for(var i = 0; i < 4; i++){
    print('hello $i');
  }
  var list = [1,2,3,4];
  list
    ..add(5)
    ..addAll([6,7,8]);
    print(list);
    String someString = "This is a String";
  
  print("The string value is: $someString "); 
   // prints The string value is: This is a String

  print("The length of the string is: ${someString.length} "); 
   // prints The length of the string is: 16
   new MainPart().describeWithEmphasis();
   new SubPart().describeWithEmphasis();
}

abstract class Describable {
  void describe();
  void describeWithEmphasis(){
    print('1');
    describe();
    print('2');
  }
}

class MainPart extends Describable{
  void describe() => {print('MainPart')};
}

class SubPart implements Describable{
  void describe() => print('SubPart');
  void describeWithEmphasis(){
    print('3');
    describe();
    print('4');
  }
}

//assert is used to debug mode.
// dart --enable-asserts assert.dart
