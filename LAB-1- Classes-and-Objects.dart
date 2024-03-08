class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to display person's information
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

void main() {
  // Create objects of Person class
  Person person1 = Person('John Doe', 30, '123 Main St');
  Person person2 = Person('Jane Smith', 25, '456 Elm St');

  // Display initial information
  print('Initial Information:');
  print('Person 1:');
  person1.displayInfo();
  print('\nPerson 2:');
  person2.displayInfo();

  // Modify attributes
  person1.age = 35;
  person2.address = '789 Oak St';

  // Display modified information
  print('\nModified Information:');
  print('Person 1:');
  person1.displayInfo();
  print('\nPerson 2:');
  person2.displayInfo();
}
