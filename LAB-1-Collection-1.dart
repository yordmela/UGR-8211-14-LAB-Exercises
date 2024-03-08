void main() {
  List<String> favoriteHobbies = ['Reading', 'Drawing', 'Playing Guitar'];
  
  
  favoriteHobbies.add('Hiking');
  print('Added a new hobby: $favoriteHobbies');
  
 
  favoriteHobbies.remove('Drawing');
  print('Removed a hobby: $favoriteHobbies');
  
  
  favoriteHobbies.sort();
  print('Sorted hobbies: $favoriteHobbies');
  
  
  if (favoriteHobbies.isEmpty) {
    print('No favorite hobbies');
  } else {
    print('Favorite hobbies exist');
  }
}
