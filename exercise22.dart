// Exercise-22 ---Collections (Lists, Sets, Maps)
void main() {
  // Create an empty list to store favorite hobbies
  List<String> favoriteHobbies = [];

  // Check if the list is empty
  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  // Add hobbies to the list
  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Watching Sports');
  favoriteHobbies.add('Photography');
  favoriteHobbies.add('Hitchhike');

  // Print the list of favorite hobbies
  print('Favorite Hobbies: $favoriteHobbies');

  // Remove a hobby from the list
  favoriteHobbies.remove('Cooking');

  // Print the updated list of favorite hobbies
  print('Updated Favorite Hobbies: $favoriteHobbies');

  // Sort the list of favorite hobbies alphabetically
  favoriteHobbies.sort();

  // Print the sorted list of favorite hobbies
  print('Sorted Favorite Hobbies: $favoriteHobbies');

  // Check if the list is empty after removing hobbies
  print('Is the list empty? ${favoriteHobbies.isEmpty}');
}
