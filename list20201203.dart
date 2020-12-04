
class Test {
  int id;
  String name;
  int age;
  Test(this.id, this.name, this.age);
}
void main(){

final tests = [
  Test(1, "A", 20),
  Test(3, "B", 30),
  Test(5, "C", 40),
  Test(2, "D", 50),
];


tests.forEach((test){
  print("${test.id}:${test.name}:${test.age}");
});
tests.sort((a,b) => a.id.compareTo(b.id));

tests.forEach((test){
  print("${test.id}:${test.name}:${test.age}");
});
}