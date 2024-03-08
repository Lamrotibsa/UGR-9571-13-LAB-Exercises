void main() {
  // Create a list of favorite hobbies
  List<String> favoriteHobbies = ['Reading', 'Cooking', 'Gardening', 'Painting'];

  // Print the initial list
  print('My favorite hobbies: $favoriteHobbies');

  // Add a new hobby
  favoriteHobbies.add('Photography');
  print('Added a new hobby: $favoriteHobbies');

  // Remove a hobby
  favoriteHobbies.remove('Cooking');
  print('Removed a hobby: $favoriteHobbies');

  // Sort the list
  favoriteHobbies.sort();
  print('Sorted list: $favoriteHobbies');

  // Check if the list is empty
  print('Is the list empty? ${favoriteHobbies.isEmpty}');
}
